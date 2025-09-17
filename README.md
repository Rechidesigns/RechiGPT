# ChatGPT Clone

A full-stack chat application built with FastAPI (Python) backend and Next.js (React) frontend, featuring JWT authentication and OpenAI integration.

## Features

- **Authentication**: JWT-based user registration and login
- **Real-time Chat**: Interactive chat interface with AI responses
- **Secure**: Password hashing with bcrypt, protected API endpoints
- **Modern UI**: Clean, responsive design with TailwindCSS
- **Chat History**: Persistent conversation storage
- **OpenAI Integration**: Powered by GPT-3.5-turbo

## Tech Stack

### Backend
- **FastAPI**: Modern Python web framework
- **SQLAlchemy**: SQL toolkit and ORM
- **SQLite**: Lightweight database
- **JWT**: JSON Web Tokens for authentication
- **bcrypt**: Password hashing
- **OpenAI API**: AI chat responses

### Frontend
- **Next.js 15**: React framework with App Router
- **TailwindCSS**: Utility-first CSS framework
- **shadcn/ui**: Modern UI components
- **TypeScript**: Type-safe JavaScript

## Setup Instructions

### Prerequisites
- Python 3.11+
- Node.js 18+
- OpenAI API key

### Backend Setup

1. Navigate to the backend directory:
   \`\`\`bash
   cd backend
   \`\`\`

2. Create a virtual environment:
   \`\`\`bash
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   \`\`\`

3. Install dependencies:
   \`\`\`bash
   pip install -r requirements.txt
   \`\`\`

4. Create a `.env` file:
   \`\`\`env
   JWT_SECRET_KEY=your-super-secret-jwt-key-change-this-in-production
   GROQ_API_KEY=your-openai-api-key-here
   \`\`\`

5. Run the backend server:
   \`\`\`bash
   python main.py
   \`\`\`

The backend will be available at `http://localhost:8000`

### Frontend Setup

1. Navigate to the frontend directory:
   \`\`\`bash
   cd frontend
   \`\`\`

2. Install dependencies:
   \`\`\`bash
   npm install
   \`\`\`

3. Run the development server:
   \`\`\`bash
   npm run dev
   \`\`\`

The frontend will be available at `http://localhost:3000`

### Docker Setup (Alternative)

1. Make sure you have Docker and Docker Compose installed

2. Create a `.env` file in the root directory:
   \`\`\`env
   GROQ_API_KEY=your-openai-api-key-here
   \`\`\`

3. Run with Docker Compose:
   \`\`\`bash
   docker-compose up --build
   \`\`\`

## API Endpoints

### Authentication
- `POST /register` - Register a new user
- `POST /login` - Login user and get JWT token

### Chat
- `POST /chat` - Send message and get AI response (requires authentication)
- `GET /chat/history` - Get chat history (requires authentication)

## Usage

1. **Register/Login**: Create an account or sign in with existing credentials
2. **Start Chatting**: Type messages in the chat interface
3. **AI Responses**: Get intelligent responses powered by OpenAI
4. **Chat History**: Your conversations are automatically saved

## Environment Variables

### Backend
- `JWT_SECRET_KEY`: Secret key for JWT token signing
- `GROQ_API_KEY`: Your OpenAI API key

### Frontend
- `NEXT_PUBLIC_API_URL`: Backend API URL (default: http://localhost:8000)

## Deployment

### Backend Deployment
- Deploy to platforms like Railway, Render, or AWS
- Set environment variables in your deployment platform
- Ensure SQLite database persistence

### Frontend Deployment
- Deploy to Vercel, Netlify, or similar platforms
- Set `NEXT_PUBLIC_API_URL` to your deployed backend URL

## Security Features

- Password hashing with bcrypt
- JWT token authentication
- Protected API endpoints
- CORS configuration for frontend integration
- Input validation and error handling

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Submit a pull request

## License

This project is licensed under the MIT License.

<img width="1920" height="1020" alt="image" src="https://github.com/user-attachments/assets/df3744fe-2ccf-464c-bb3c-7b0944b1941e" />
<img width="1920" height="1020" alt="image" src="https://github.com/user-attachments/assets/9c712244-7953-43ce-a405-f6619a41f6d6" />

