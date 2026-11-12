#!/usr/bin/env python3
import http.server, socketserver, urllib.parse

PORT = 80

class Handler(http.server.BaseHTTPRequestHandler):
    def log_message(self, fmt, *args):
        pass
    def _handle(self):
        parsed = urllib.parse.urlparse(self.path)
        print(f"[DEBUG] Requete recue : {parsed.path} ? {parsed.query}", flush=True)
        self.send_response(200)
        self.send_header("Content-Type", "text/html")
        self.end_headers()
        self.wfile.write(b"<html><body><h1>Server OK</h1></body></html>")
    do_GET = _handle
    do_POST = _handle

with socketserver.TCPServer(("", PORT), Handler) as httpd:
    print(f"Serveur en ecoute sur le port {PORT}...", flush=True)
    httpd.serve_forever()
