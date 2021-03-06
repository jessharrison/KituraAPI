import Foundation
import Kitura

let router = Router()

router.get("/HelloWorld") {
    request, response, next in
    response.send("Hello World")
    next()
}

let port = Int(ProcessInfo.processInfo.environment["PORT"] ?? "8090") ?? 8090

Kitura.addHTTPServer(onPort: port, with: router)

Kitura.run()
