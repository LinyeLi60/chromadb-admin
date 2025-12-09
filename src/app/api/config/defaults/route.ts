import { NextResponse } from 'next/server'

export async function GET() {
  // Return default values from environment variables
  // These are safe to expose as they are just default connection strings
  return NextResponse.json({
    chromaConnectionString: process.env.CHROMA_API || '',
    embeddingModelUrl: process.env.OPENAI_BASE_URL || '',
    embeddingModel: process.env.EMBEDDING_MODEL || '',
  })
}

