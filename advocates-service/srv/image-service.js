/* eslint-disable no-unused-vars */
const cds = require('@sap/cds')
module.exports = cds.service.impl(function () {

    const Member = this.entities.Member

    this.after('each', Member, async (row) =>{
        row.imageUrl = `/advocates/MemberImages('${row.ID}')/image`
       })
     
       this.on('loadMemberImages', async (req) => {
         req._.req.loggingContext.getTracer(__filename).info('Inside loadMemberImages Handler')
         try {
           const fs = require("fs")
           const fileExists = require('fs').existsSync
           let members = await cds.run(SELECT.from(Member))
           for (let member of members) {
             let fileName = __dirname + `/images/${member.ID}.jpg`
             if (fileExists(fileName)) {
               let importData = fs.readFileSync(fileName)
               await cds.run(INSERT.into(MemberImages).columns(
                 'member.ID', 'imageType', 'image'
               ).values(
                  member.ID, 'image/jpeg', importData
                ))
               //await cds.run(UPDATE(Products).set({ imageType: 'image/jpeg', image: importData }).where({ productId: product.productId }))
             }
           }
           return true
         } catch (error) {
           req._.req.loggingContext.getLogger('/Application/loadMemberImages').error(error)
           return false
         }
       })
})