# Chromadb Admin

Admin UI for the Chroma embedding database, built with Next.js

![screely-1696786774071](https://github.com/flanker/chromadb-admin/assets/109811/6d4369d4-d10c-49f7-8342-89849f271dbe)

## Links：

* GitHub Repo: [https://github.com/flanker/chromadb-admin](https://github.com/flanker/chromadb-admin)
* Chroma Official Website [https://docs.trychroma.com](https://docs.trychroma.com)

## Features

- 🔍 Vector similarity search with text queries
- 📊 Collection and record management
- 🔐 Authentication support (Token, Basic Auth, No Auth)
- 🎨 Modern UI built with Mantine
- ⚙️ Environment variable configuration
- 🚀 Quick start command

## Authentication Support

<img width="743" alt="image" src="https://github.com/flanker/chromadb-admin/assets/109811/c15cab9a-db80-4e2f-b732-a3bd5ef557da">

## Quick Start

### Option 1: Global Command (Recommended)

Install the global command for easy access from anywhere:

```bash
./install-command.sh
source ~/.zshrc  # or restart your terminal
```

Then you can start the project from anywhere:

```bash
chromadb-admin
```

### Option 2: Traditional Method

First, install dependencies:

```bash
yarn install
# or
npm install
```

Then, start the development server:

```bash
yarn dev
# or
npm run dev
# or
pnpm dev
# or
bun dev
```

Finally, open [http://localhost:3001](http://localhost:3001) in your browser to see the app.

## Configuration

### Environment Variables

Create a `.env.local` file in the project root (copy from `.env.example`):

```bash
cp .env.example .env.local
```

Edit `.env.local` with your configuration:

```bash
# OpenAI API Configuration
OPENAI_API_KEY=your-openai-api-key-here
OPENAI_BASE_URL=https://api.openai.com/v1

# ChromaDB Connection Configuration
# Chroma connection string (host:port or full URL)
CHROMA_API=http://localhost:8000

# Embedding Model Configuration
# Model name for embeddings (e.g., text-embedding-3-small, text-embedding-3-large, llama2)
EMBEDDING_MODEL=text-embedding-3-small
```

**Note**: The values in `.env.local` will be automatically filled in the setup page when you first open it.

### Setup Page

When you first open the app, you'll be directed to the setup page where you can configure:

- **Chroma Connection String**: Your ChromaDB server address (e.g., `http://localhost:8000`)
- **Tenant & Database**: Multi-tenancy configuration
- **Embedding Model URL**: Supports various embedding services:
  - OpenAI: `https://api.openai.com/v1`
  - LM Studio: `http://localhost:1234/v1/embeddings`
  - Ollama (OpenAI mode): `http://localhost:11434/v1`
  - Ollama (native): `http://localhost:11434/api/embeddings`
- **Embedding Model**: Model name (e.g., `text-embedding-3-small`, `llama2`)
- **Authentication**: Token, Basic Auth, or No Auth

## Docker

### Run with Pre-built Image

```bash
docker run -p 3001:3001 fengzhichao/chromadb-admin
```

Then visit [http://localhost:3001](http://localhost:3001) in your browser.

**Note**: Use `http://host.docker.internal:8000` for the connection string if you want to connect to a ChromaDB instance running locally.

### Build and Run Locally

Build the Docker image:

```bash
docker build -t chromadb-admin .
```

Run the Docker container:

```bash
docker run -p 3001:3001 chromadb-admin
```

## Development

### Available Scripts

- `yarn dev` - Start development server on port 3001
- `yarn build` - Build for production
- `yarn start` - Start production server
- `yarn lint` - Run ESLint
- `yarn generate-mock-data` - Generate mock data for testing

### Project Structure

```
chromadb-admin/
├── src/
│   ├── app/              # Next.js app directory
│   │   ├── api/         # API routes
│   │   └── setup/        # Setup page
│   ├── components/      # React components
│   └── lib/             # Utilities and helpers
├── script/              # Utility scripts
├── .env.example         # Environment variables template
└── .env.local           # Your local configuration (not committed)
```

## Troubleshooting

### Port Already in Use

If port 3001 is already in use, you can change it in `package.json`:

```json
"dev": "next dev -p 3001"
```

### Environment Variables Not Loading

Make sure to:
1. Create `.env.local` file (not `.env`)
2. Restart the development server after changing environment variables
3. Check that variable names match exactly (case-sensitive)

### Proxy Issues

If you encounter proxy connection errors, you can disable proxy for this repository:

```bash
git config --local http.proxy ""
git config --local https.proxy ""
```

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the terms of the MIT license.

## Note

This is NOT an official Chroma project.
