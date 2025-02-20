from http.server import HTTPServer, BaseHTTPRequestHandler
import socket, redis, json

redis_client = redis.Redis(host='127.0.0.1', port=6379, db=0, decode_responses=True)

class SimpleHTTPRequestHandler(BaseHTTPRequestHandler):
    def _send_response(self, message, status_code):
        client_ip = self.client_address[0]
        full_message = f"{message}\n\nClient IP: {client_ip}\n"
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
        elif self.path == '/messages':
            messages = redis_client.lrange("key", 0, -1)
            self._send_response(json.dumps(messages, indent=2), 200)

    def do_POST(self):
        if self.path == '/messages':
            content_length = int(self.headers['Content-Length'])
            post_data = self.rfile.read(content_length)
            try:
                message = json.loads(post_data.decode('utf-8'))
                redis_client.rpush("key", json.dumps(message))
                self._send_response("Message stored successfully", 200)
            except json.JSONDecodeError:
                self._send_response("Invalid JSON", 400)
        else:
            self._send_response("Not Found", 404)

httpd = HTTPServer(('0.0.0.0', 8000), SimpleHTTPRequestHandler)
print("Server started at http://localhost:8000")
httpd.serve_forever()


# Use CMD to test sending POST requests to the server using curl
# curl -X POST http://localhost:8000/messages -H "Content-Type: application/json" -d "{\"message\": \"Hello, Aachen again!\"}"