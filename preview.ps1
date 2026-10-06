# =========================================================================
# Heranya Shah Portfolio — Local Preview Runner
# Starts a local static HTTP server without needing Node or external tools
# =========================================================================

$port = 8080
$folder = $PSScriptRoot

Write-Host "=====================================================" -ForegroundColor Yellow
Write-Host " HERANYA SHAH — CINEMATIC DIGITAL IDENTITY" -ForegroundColor Cyan
Write-Host "=====================================================" -ForegroundColor Yellow
Write-Host " Serving from: $folder" -ForegroundColor Gray
Write-Host " Local URL:    http://localhost:$port" -ForegroundColor Green
Write-Host " Press Ctrl+C in this terminal to stop." -ForegroundColor DarkGray
Write-Host "=====================================================" -ForegroundColor Yellow

# Launch default browser
Start-Process "http://localhost:$port"

$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add("http://localhost:$port/")
$listener.Start()

$contentTypes = @{
    ".html" = "text/html; charset=utf-8"
    ".css"  = "text/css; charset=utf-8"
    ".js"   = "application/javascript; charset=utf-8"
    ".json" = "application/json; charset=utf-8"
    ".png"  = "image/png"
    ".jpg"  = "image/jpeg"
    ".jpeg" = "image/jpeg"
    ".svg"  = "image/svg+xml"
    ".ico"  = "image/x-icon"
}

try {
    while ($listener.IsListening) {
        $context = $listener.GetContext()
        $request = $context.Request
        $response = $context.Response

        $urlPath = $request.Url.LocalPath.TrimStart('/')
        if ([string]::IsNullOrWhiteSpace($urlPath)) {
            $urlPath = "index.html"
        }

        $filePath = Join-Path $folder $urlPath.Replace('/', [IO.Path]::DirectorySeparatorChar)

        if (Test-Path $filePath -PathType Leaf) {
            $ext = [IO.Path]::GetExtension($filePath).ToLower()
            $contentType = "application/octet-stream"
            if ($contentTypes.ContainsKey($ext)) {
                $contentType = $contentTypes[$ext]
            }

            $bytes = [IO.File]::ReadAllBytes($filePath)
            $response.ContentType = $contentType
            $response.ContentLength64 = $bytes.Length
            $response.StatusCode = 200
            $response.OutputStream.Write($bytes, 0, $bytes.Length)
        } else {
            $response.StatusCode = 404
            $errBytes = [System.Text.Encoding]::UTF8.GetBytes("404 Not Found")
            $response.OutputStream.Write($errBytes, 0, $errBytes.Length)
        }
        $response.Close()
    }
} finally {
    $listener.Stop()
}
