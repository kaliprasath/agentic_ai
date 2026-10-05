# AI Legal Document Analysis System - Easy Setup

## What you need

- Windows 10/11
- Python 3.10 or newer
- VS Code
- An OpenAI API key

## Step 1 - Open the project

Extract this ZIP.

Open the extracted `AI-Legal-Document-Analysis` folder in VS Code.

## Step 2 - Add your API key

Open the `.env` file.

You will see:

```env
OPENAI_API_KEY=PASTE_YOUR_OPENAI_API_KEY_HERE
```

Replace the placeholder with your actual API key:

```env
OPENAI_API_KEY=sk-your_actual_key_here
```

Do not share this key or upload the `.env` file to GitHub.

## Step 3 - Easiest way to run

Double-click:

`run_project.bat`

The script will automatically:

1. Create the Python virtual environment.
2. Install all required packages.
3. Start the FastAPI server.

Then open:

`http://127.0.0.1:8000`

## Step 4 - Test the project

Use the included:

`sample_contract.txt`

Upload it on the website and click **Analyze Document**.

You should receive:

- Document type
- Parties
- Summary
- Key clauses
- Important dates
- Obligations
- Financial terms
- Termination conditions
- Confidentiality information
- Risks
- Missing information
- Questions for a lawyer

You can also ask questions about the uploaded document using the Q&A section.

## Manual VS Code method

If you do not want to use `run_project.bat`, open the VS Code terminal:

```powershell
python -m venv venv
```

Activate it:

```powershell
venv\Scripts\activate
```

Install packages:

```powershell
pip install -r requirements.txt
```

Run:

```powershell
uvicorn app.main:app --reload
```

Open:

`http://127.0.0.1:8000`

## Important

The system is an educational document-analysis tool. It does not provide professional legal advice.

Keep your API key private.
