# Student AI Usage & Grades

**Tools:** SQL (MySQL)

A short SQL project looking at whether students who use AI tools (ChatGPT, Copilot, Gemini) saw their grades change, compared with students who don't use AI. The dataset has 100 students, with grades recorded before and after they started using AI.

## Key Findings

- **Students who used AI went up about 9–10 points on average.** Students who didn't use AI stayed exactly the same.
- **By tool:** Copilot users went from 66 → 76, Gemini users from 64.5 → 75, and ChatGPT users from 65 → 74.
- **By purpose:** gains were similar whether AI was used for research (+10.3), coding (+10.0), or homework (+9.1).
- **Both school and college students improved** by a similar amount.

## Limitations

This is a small sample (100 students), and non-users' grades don't change *at all*, which suggests the dataset is simulated. These results are good SQL practice, but they're not evidence that AI improves grades.

## What I Did in SQL

- Compared average before/after grades with `GROUP BY` on tool, education level, and purpose
- Filtered by tool to compare individual students
- Looked at screen time and age alongside AI use

## Files

- `ai_data_analysis_sequelthing.sql`: queries with notes
- `students_ai_usage.csv`: dataset
