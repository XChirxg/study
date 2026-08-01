# Business Environment & International Business — MCQ Bank
## Template / Guide to the Output Files

This set was built from one source file (149 previous-year MCQs, June 2019 – June 2025)
that has been enriched and reorganized into **two** output files. This document explains
what each file is, what every field means, and how to use them.

---

## 1. The two files

| File | What it is | When to use it |
|---|---|---|
| `business_environment_mcqs_v2.json` | The **master file** — all 149 questions, in original order, each enriched with `question_type`, `topic`, and `keywords`. | Full reference / source of truth. |

| `README_template.md` (this file) | Explains the schema and the category list. | Onboarding / reference. |

---

## 2. Fields added to every question

Every question object (complete **or** OCR-incomplete) now carries:

```json
{
  "q_no": 1,
  "exam_session": "June 2025",
  "question_type": "Simple MCQ",
  "topic": {
    "main_branch": "Business Environment Fundamentals",
    "sub_branch": "Micro Environment"
  },
  "keywords": ["micro environment", "customers", "suppliers", "competitors", "technology"],
  "question": "...",
  "options": { "...": "..." },
  "answer": "c"
}
```

- **`question_type`** — the *format* of the question (see category list below). This is what
  `business_environment_mcqs_by_type.json` groups by.
- **`topic.main_branch`** — the broad subject area (top-level mind-map node).
- **`topic.sub_branch`** — the specific concept within that branch (child mind-map node).
- **`keywords`** — 2–6 short terms pulled from the question that identify what it's really
  testing, useful for search/tagging and for labeling mind-map leaves.
- Questions marked `"ocr_incomplete": true` still get all four fields above — they were
  categorised using whatever partial text, options, or context survived the OCR scan, so they
  can still be placed on the mind map and counted in the topic statistics, even though the
  exact wording is uncertain.

---

## 3. Question-type categories (`question_type`)

These are the *formats* previous questions have taken, independent of subject matter:

| Category | Meaning | Count |
|---|---|---|
| **Simple MCQ** | Single best-answer, 4 options, one correct. | 51 |
      {
        "q_no": 4,
        "exam_session": "June 2025",
        "question_type": "Simple MCQ",
        "topic": {
          "main_branch": "Business Environment Fundamentals",
          "sub_branch": "PESTLE Framework"
        },
        "keywords": [
          "PESTLE",
          "legal factors"
        ],
        "question": "What does 'L' represent in the PESTLE framework?",
        "options": {
          "a": "Labour",
          "b": "Legal",
          "c": "Land",
          "d": "Latest"
        },
        "answer": "b"
      },

| **Multi-Select (Statement-based)** | Several labelled statements (A, B, C…); pick the option that correctly groups the true ones. | 43 |
      {
        "q_no": 5,
        "exam_session": "June 2025",
        "question_type": "Multi-Select (Statement-based)",
        "topic": {
          "main_branch": "Business Environment Fundamentals",
          "sub_branch": "Microeconomics vs Macroeconomics"
        },
        "keywords": [
          "microeconomics",
          "product pricing",
          "consumer behaviour",
          "factor pricing"
        ],
        "question": "Which of the following are part of microeconomics? A. Product pricing B. Consumer behaviour C. Interest rate D. Factor pricing",
        "options": {
          "a": "A, B and C Only",
          "b": "A, B and D Only",
          "c": "A and D Only",
          "d": "A, B, C and D"
        },
        "answer": "b"
      },
      


| **Matching (List-I & List-II)** | Match items in one list to items in another (theories↔authors, institutions↔years, terms↔definitions, etc.). | 28 |
      {
        "q_no": 2,
        "exam_session": "June 2025",
        "question_type": "Matching (List-I & List-II)",
        "topic": {
          "main_branch": "Trade Tariffs & Barriers",
          "sub_branch": "Types of Tariffs"
        },
        "keywords": [
          "specific tariff",
          "ad valorem tariff",
          "compound tariff",
          "variable tariff"
        ],
        "question": "Match List-I (Trade Tariff) with List-II (Explanation).",
        "list_1": {
          "A": "Specific Tariff",
          "B": "Ad valorem Tariff",
          "C": "Compound Tariff",
          "D": "Variable Tariff"
        },
        "list_2": {
          "I": "Fixed percentage of the value of the commodity",
          "II": "Fixed amount of money per unit",
          "III": "Duty fixed to bring the price of imported commodity to the level of domestic support price",
          "IV": "Combination of Ad valorem and Specific Tariff"
        },
        "options": {
          "a": "A-I, B-II, C-III, D-IV",
          "b": "A-II, B-I, C-IV, D-III",
          "c": "A-II, B-IV, C-III, D-I",
          "d": "A-IV, B-II, C-I, D-III"
        },
        "answer": "b"
      },


| **Sequencing (Process/Procedure)** | Arrange steps of a real-world process in the correct order (e.g. export deal steps, dispute settlement stages). | 9 |

      {
        "q_no": 24,
        "exam_session": "September 2024",
        "question_type": "Sequencing (Process/Procedure)",
        "topic": {
          "main_branch": "Export-Import Operations & Trade Finance",
          "sub_branch": "Export Factoring"
        },
        "keywords": [
          "export factoring",
          "import factor",
          "export factor",
          "invoice",
          "credit risk"
        ],
        "question": "In international trade, factoring is widely used in short-term transactions as a continuous arrangement. Arrange the steps of export factoring operations in sequence: A. The export factor transfers the invoice to the import factor, who, in return, assumes credit risk and undertakes the administration of receivables. B. The export factor pays cash in advance to the exporter against receivables until the payment is received from the importer. C. The importer and exporter enter into a sales contract and agree on the terms of sale. D. The import factor presents the invoice to the importer, takes payment, and pays to the export factor. E. The exporter ships the goods to the importer and submits the invoice to the export factor.",
        "options": {
          "a": "E,A,B,D,C",
          "b": "E,B,A,D,C",
          "c": "C,B,E,D,A",
          "d": "C,E,B,A,D"
        },
        "answer": "d"
      },


| **Chronological Sequencing** | Arrange historical events/organisations in the order they occurred/were founded. | 6 |
      {
        "q_no": 3,
        "exam_session": "June 2025",
        "question_type": "Chronological Sequencing",
        "topic": {
          "main_branch": "Regional Economic Integration",
          "sub_branch": "Formation of Trade Blocs"
        },
        "keywords": [
          "NAFTA",
          "European Union",
          "SAARC",
          "ASEAN",
          "chronology"
        ],
        "question": "Arrange the following in chronological order of their establishment (Old to New): A. NAFTA B. European Union C. SAARC D. ASEAN",
        "options": {
          "a": "A,B,C,D",
          "b": "B,A,D,C",
          "c": "D,C,B,A",
          "d": "C,D,A,B"
        },
        "answer": "c"
      },

| **Sequencing (Levels/Hierarchy)** | Arrange items by level of intensity/integration/magnitude (e.g. Free Trade Area → Customs Union → … → Political Union). | 6 |

     {
        "q_no": 18,
        "exam_session": "January 2025",
        "question_type": "Sequencing (Levels/Hierarchy)",
        "topic": {
          "main_branch": "Regional Economic Integration",
          "sub_branch": "Levels of Economic Integration"
        },
        "keywords": [
          "free trade area",
          "customs union",
          "economic union",
          "political union"
        ],
        "question": "Arrange the following levels of economic integration: A. Political Union B. Free Trade Area C. Customs Union D. (illegible) E. Economic Union",
        "options": {
          "b": "B, A, C, D, E (partial/illegible)",
          "c": "E, D, B, A, C (partial/illegible)"
        },
        "note": "Standard order (least to most integrated): Free Trade Area, Customs Union, Common Market, Economic Union, Political Union.",
        "ocr_incomplete": true
      }, 

| **Assertion-Reason** | Given an Assertion (A) and a Reason (R); judge truth of each and whether R explains A. | 5 |

  {
        "q_no": 67,
        "exam_session": "June 2023",
        "question_type": "Assertion-Reason",
        "topic": {
          "main_branch": "Export-Import Operations & Trade Finance",
          "sub_branch": "Sale and Leaseback"
        },
        "keywords": [
          "sale and leaseback",
          "fixed assets",
          "leasing"
        ],
        "question": "Given below are two statements: Assertion A and Reason R. Assertion A: Usually manufacturing companies use sale and lease back arrangement to unlock investment in fixed assets. Reason R: In a sale and lease back arrangement, the companies sell the asset to a leasing company, and lease it back to enjoy the uninterrupted use of the asset in their business.",
        "options": {
          "a": "Both A and R are true and R is the correct explanation of A",
          "b": "Both A and R are true but R is NOT the correct explanation of A",
          "c": "A is true but R is false",
          "d": "A is false but R is true"
        },
        "answer": "a"
      }, 
| **Statement-based (True/False)** | Two or more standalone statements; judge true/false of each. | 1 |
      {
        "q_no": 73,
        "exam_session": "March 2023",
        "question_type": "Statement-based (True/False)",
        "topic": {
          "main_branch": "Balance of Payments & Foreign Exchange",
          "sub_branch": "Monetary Policy"
        },
        "keywords": [
          "monetary policy rate",
          "policy transmission"
        ],
        "question": "Given below are two statements: Statement I: Monetary policy rates change... hence monetary policy can address the current (issue). Statement II: (illegible)",
        "options": {
          "a": "Both Statement I and Statement II are true",
          "b": "Both Statement I and Statement II are false",
          "c": "Statement I is true but Statement II is false",
          "d": "Statement I is false but Statement II is true"
        },
        "ocr_incomplete": true
      }
*(Counts reflect the 149 questions in this reconstruction.)*

---


Sorted by how many questions fall under each (i.e. how "deep"/well-tested that branch is).
Use this as your first ring of nodes around a central "Business Environment & International
Business" node; each branch's sub-branches (see `business_environment_mindmap_topics.json` →
`branch_summary[].sub_branches`) become the next ring, and individual `q_no`s are the leaves.

| Main Branch | # Questions | # Sub-branches |
|---|---|---|
| WTO/GATT & Multilateral Trade System | 26 | 21 |
| Regional Economic Integration | 16 | 13 |
| Balance of Payments & Foreign Exchange | 15 | 15 |
| FDI & International Business Entry | 12 | 12 |
| Export-Import Operations & Trade Finance | 10 | 10 |
| Business Environment Fundamentals | 8 | 8 |
| International Trade Theories | 8 | 5 |
| International Financial Institutions | 8 | 7 |
| International Business Strategy | 8 | 6 |
| Consumer Protection & Business Law | 6 | 5 |
| International Business Approaches | 5 | 3 |
| Globalization & Economic Integration | 4 | 4 |
| Economic History & Economists | 4 | 4 |
| Globalization & Economic Integration Index | 3 | 3 |
| Consumer Behaviour | 3 | 3 |
| Indian Economy | 2 | 2 |
| Business Law | 2 | 2 |
| Trade Tariffs & Barriers | 1 | 1 |
| Financial Markets | 1 | 1 |
| Corporate Reporting & Business Standards | 1 | 1 |
| Human Resource Accounting | 1 | 1 |
| Socio-Economic Trends | 1 | 1 |
| Contemporary Global Issues | 1 | 1 |
| Business Strategy & Innovation | 1 | 1 |
| Strategic Management | 1 | 1 |
| Global Supply Chain & Policy | 1 | 1 |

**Reading this for analysis:**
- **Broad/shallow branches** (many sub-branches, ~1 question each — e.g. WTO/GATT with 21
  sub-branches across 26 questions, Balance of Payments with 15 sub-branches across 15
  questions) → the examiner touches many *different* concepts once each, rather than
  drilling repeatedly into one.
- **Narrow/deep branches** (few sub-branches, repeated hits — e.g. International Trade
  Theories: 8 questions but only 5 sub-branches, meaning some sub-branches like "Theories &
  Propounders" recur across multiple exam sessions) → these are core, frequently re-tested
  concepts worth prioritising.
- **Single-question branches** (Trade Tariffs & Barriers, Financial Markets, HR Accounting,
  etc.) → essentially one-off/peripheral topics, low repeat-probability based on this sample.

---

## 5. Notes on data quality

- 149 of an estimated 162 original questions were recoverable from the OCR scan.
- Questions flagged `"ocr_incomplete": true` have uncertain stems/options/answers but are
  still fully tagged with `question_type`, `topic`, and `keywords` based on whatever context
  survived, so they remain usable for topic-frequency analysis (just not for verbatim
  practice/answer-checking).
- `answer` fields marked `"uncertain..."` or absent should be verified against an official key
  before use in a quiz.
