// change the bootstrap of CAP

const cds = require('@sap/cds')
const proxy = require('@sap/cds-odata-v2-adapter-proxy')
const port = process.env.PORT || 4004;

global.__base = __dirname + "/"
console.log(global.__base)
console.log(`CDS Custom Boostrap from /srv/server.js`)

cds.on('bootstrap', app => {
    
    const cors = require('cors')
    app.use(cors())
    app.use((req, res, next) => {
        res.setHeader('Access-Control-Allow-Origin', '*');
        next();
    })

    app.use(proxy({
        path: "v2",
        port: port
    }))

    app.use(proxy({
        services: {
            "/advocates/": "AdvocatesService",
        }
    }))

    //CDS REST Handler
    let restURL = "/rest/"

    cds.serve('AdvocatesService')
        .from(global.__base + "/gen/csn.json")
        .to("rest")
        .at(restURL + 'advocates')
        .in(app)
        .catch((err) => {
            app.logger.error(err);
        })
})

module.exports = cds.server