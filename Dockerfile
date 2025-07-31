# Start from the official Go image
FROM golang:1.22-alpine

# Set working directory
WORKDIR /app

# Copy Go module files and download deps
COPY go.mod ./
RUN go mod download

# Copy source code
COPY . .

# Build the Go binary
RUN go build -o main .

# Expose the service port
EXPOSE 8080

# Run the binary
CMD ["./main"]