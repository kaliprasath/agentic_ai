# AI Legal Document Analysis System

An educational AI agent that analyzes PDF, DOCX and TXT legal documents.

## Features

- PDF/DOCX/TXT upload
- AI-generated executive summary
- Party identification
- Key clause extraction
- Important dates
- Obligations
- Financial terms
- Termination conditions
- Confidentiality analysis
- Potential risk identification
- Missing/unclear information
- Questions to discuss with a lawyer
- Follow-up Q&A about the uploaded document
- SQLite analysis history
- FastAPI backend
- HTML/CSS/JavaScript frontend

## Requirements

- Python 3.10+
- VS Code
- An OpenAI API key

## Windows setup

Open the VS Code terminal in this project folder.

### 1. Create virtual environment

```bash
python -m venv venv
```

### 2. Activate it

```bash
venv\Scripts\activate
```

### 3. Install packages

```bash
pip install -r requirements.txt
```

### 4. Create .env

Copy `.env.example` to `.env` and put your API key:

```env
OPENAI_API_KEY=your_key_here
```

### 5. Start the application

```bash
uvicorn app.main:app --reload
```

### 6. Open the application

http://127.0.0.1:8000

## Project flow

User
  -> Upload legal document
  -> Document parser
  -> AI legal analysis agent
  -> Structured analysis
  -> Summary / clauses / risks / obligations / Q&A

## Disclaimer

This project is for educational and informational purposes. It does not
provide professional legal advice. Legal decisions should be reviewed by
a qualified legal professional.

## Suggested future improvements

- RAG/vector database
- Page-level citations
- OCR for scanned PDFs
- Clause comparison
- Risk severity scoring
- Downloadable PDF reports
- Authentication and user accounts
- Multiple-document analysis


## Easiest Windows Setup

1. Open `.env`.
2. Replace `PASTE_YOUR_OPENAI_API_KEY_HERE` with your API key.
3. Double-click `run_project.bat`.
4. Open http://127.0.0.1:8000

The batch file creates the virtual environment, installs dependencies, and starts the server automatically.

See `EASY_SETUP.md` for the complete VS Code setup.
