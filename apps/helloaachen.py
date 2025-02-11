from http.server import HTTPServer, BaseHTTPRequestHandler

class SimpleHTTPRequestHandler(BaseHTTPRequestHandler):
    def _send_response(self, message, status_code):
        client_ip = self.client_address[0]
        server_ip = self.server.server_address[0]
        full_message = f"{message}\n\nClient IP: {client_ip}\nServer IP: {server_ip}"
        self.send_response(status_code)
        self.send_header('Content-type', 'text/plain')
        self.end_headers()
        self.wfile.write(full_message.encode())

    def do_GET(self):
        if self.path == '/':
            self._send_response("Hello, Aachen!", 200)
        elif self.path == '/version':
            self._send_response("Version : 1.0.0.1", 200)
        elif self.path == '/healthz':
            self._send_response("OK", 200)

httpd = HTTPServer(('0.0.0.0', 8000), SimpleHTTPRequestHandler)
print("Server started at http://localhost:8000")
httpd.serve_forever()