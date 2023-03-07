import Vapor

// configures your application
public func configure(_ app: Application) throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))

    app.http.server.configuration.port = 8080
    
    app.weiboHotSerive = WeiboHotSerive(app: app)
    
    // register routes
    try routes(app)
}
