// ─────────────────────────────────────────────
//  Shivansh Jain — AI/ML Engineer Resume
//  Compile: typst compile shivansh_jain_resume.typ
// ─────────────────────────────────────────────

#set page(
  paper: "us-letter",
  margin: (x: 0.60in, y: 0.50in),
)

#set text(font: "New Computer Modern", size: 9.8pt, fill: luma(15%))
#set par(leading: 0.52em)

#let accent   = rgb("#1a56a0")
#let rule-col = rgb("#d0d8e8")

#let section(title) = {
  v(6pt)
  text(weight: "bold", size: 10.4pt, fill: accent, upper(title))
  line(length: 100%, stroke: 0.6pt + rule-col)
  v(2pt)
}

#let role(
  company: "",
  title:   "",
  loc:     "",
  dates:   "",
  body,
) = {
  grid(
    columns: (1fr, auto),
    {
      text(weight: "bold", company)
      if title != "" { h(4pt); text(fill: accent, style: "italic", title) }
    },
    {
      set align(right)
      text(fill: luma(40%), loc + "  |  " + dates)
    }
  )
  v(1pt)
  body
  v(4pt)
}

#let bul(..items) = {
  set list(indent: 8pt, body-indent: 5pt, marker: [•])
  list(..items)
}

#let skill-row(label, val) = {
  grid(
    columns: (1.55in, 1fr),
    text(weight: "bold", fill: luma(25%), label),
    text(val),
  )
  v(2pt)
}


// ══════════════════════════════════════════════
//  HEADER
// ══════════════════════════════════════════════
#align(center)[
  #text(size: 22pt, weight: "bold", fill: accent)[Shivansh Jain]
  #v(2pt)
  #text(size: 9.2pt, fill: luma(30%))[
    India · #link("tel:+918959648831")[+91 8959648831] ·
    #link("mailto:shivanshjain45@gmail.com")[shivanshjain45\@gmail.com] ·
    #link("https://github.com/Shivansh-Jain")[github.com/Shivansh-Jain] ·
    #link("https://www.linkedin.com/in/shivansh-jain-in/")[linkedin.com/in/shivansh-jain-in]
  ]
]

// ══════════════════════════════════════════════
//  SUMMARY
// ══════════════════════════════════════════════
#section("Summary")
#text[
  AI/ML Engineer with experience designing and scaling enterprise-grade AI platforms focused on
  Conversational AI, Generative AI, and Retrieval-Augmented Generation (RAG) systems. Led the
  architecture and development of scalable omni-channel conversational AI infrastructure supporting
  voice, chat, multilingual workflows, and real-time AI orchestration. Strong expertise in LLMs,
  agentic AI systems, distributed microservices, Kubernetes, Kafka, vector databases, and
  cloud-native deployments. Proven track record of building production-grade AI systems from
  proof-of-concept to enterprise-scale while leading engineering teams and driving technical strategy.
]

// ══════════════════════════════════════════════
//  EXPERIENCE
// ══════════════════════════════════════════════
#section("Experience")

#role(
  company: "Aivar Innovations",
  title:   "Senior AI/ML Engineer",
  loc:     "Bengaluru & Coimbatore, India",
  dates:   "May 2025 – Present",
)[
  #bul(
    [Promoted to Senior AI/ML Engineer within *6 months* for leading scalable enterprise conversational AI platform initiatives; awarded *"Thalaivar of the Year"* (Employee of the Year).],
    [Led architecture of *Convogent Accelerator* — transforming a telephony POC into an omni-channel conversational AI platform supporting SIP calling, WebRTC, WhatsApp/chat, multilingual conversations, and agent assist.],
    [Deployed microservices-based infrastructure on *Amazon EKS* with independently scalable services for orchestration, voice pipelines, analytics, and evaluation; integrated *KEDA* for dynamic autoscaling.],
    [Leveraged *AWS cloud services* including EKS, ECS, Lambda, S3, API Gateway, ALB, NLB, Cognito, and AWS DocumentDB for scalable, secure, and production-ready enterprise deployments.],
    [Integrated *Kafka* for real-time event orchestration, conversational state management, CRM synchronization, and distributed workflow execution.],
    [Built a no-code flow-based conversational orchestration engine enabling enterprise users to configure workflows, branching logic, escalation paths, and AI behavior directly from the UI.],
    [Architected multilingual AI infrastructure with runtime switching between STT, TTS, and LLM providers including *ElevenLabs, Cartesia, Deepgram, Sarvam, AWS Bedrock, OpenAI*, and custom inference endpoints.],
    [Designed configurable *RAG pipelines* supporting Qdrant, OpenSearch, and PostgreSQL vector backends for domain-specific knowledge retrieval and hallucination reduction.],
    [Built advanced evaluation systems: persona-based testing, node coverage validation, AI-generated improvement suggestions, and real-time testing interfaces.],
    [Set up *OpenTelemetry + Grafana* for distributed tracing, production monitoring, and latency tracking; enabled both SaaS and fully self-hosted enterprise deployments.],
    [Led and mentored an AI engineering team of *10–12 engineers/interns*, driving engineering processes, deployment strategy, and architectural direction.],
    [Developed AI-powered freight extraction pipelines processing unstructured PDFs and Excel freight documents into structured JSON using OCR, table extraction, LLMs, and custom validation workflows.],
  )
]

#role(
  company: "Sustainability Economics",
  title:   "AI/ML Engineer",
  loc:     "Bengaluru, India",
  dates:   "Aug 2024 – May 2025",
)[
  #bul(
    [Created a RAG-based chatbot for the company's main website, enabling contextual Q&A over proprietary knowledge bases.],
    [Developed an automated LLM-driven web data collection tool for domain-specific user queries.],
    [Built end-to-end RAG pipelines and vector database workflows for intelligent document retrieval and question answering.],
  )
]

#role(
  company: "Fiery (previously EFI)",
  title:   "Data Scientist Intern",
  loc:     "Bengaluru, India",
  dates:   "Jan 2024 – Aug 2024",
)[
  #bul(
    [Automated job property extraction from customer mail orders using *LLaMA 3.1* and Ollama, eliminating manual processing.],
    [Fine-tuned *Mistral-7B* with LoRA for improved language processing on internal domain-specific datasets.],
    [Built a RAG-based Q&A chatbot for company-specific knowledge retrieval using Mistral-7B.],
    [Developed vector database solutions for image and text similarity matching workflows.],
  )
]

#role(
  company: "Indian Institute of Technology Madras",
  title:   "Web Dev Intern",
  loc:     "Chennai, India",
  dates:   "Jul 2023 – Dec 2023",
)[
  #bul(
    [Developed a full-featured placement portal with PHP, JavaScript, and MySQL supporting admin, student, and recruiter workflows.],
  )
]

#role(
  company: "Indian Institute of Technology Madras",
  title:   "Academic Mentor — Python",
  loc:     "Chennai, India",
  dates:   "Aug 2022 – Sep 2022",
)[
  #bul(
    [Mentored students in Python programming, guiding them from beginner to advanced proficiency.],
  )
]

// ══════════════════════════════════════════════
//  EDUCATION
// ══════════════════════════════════════════════
#section("Education")

#grid(
  columns: (1fr, auto),
  [*Indian Institute of Technology Madras* #h(4pt) #text(style: "italic", fill: accent)[B.S. Data Science and Applications]],
  text(fill: luma(40%), "Dec 2024"),
)
#text(fill: luma(35%), size: 9pt)[CGPA: 8.2 / 10]

#v(5pt)

#grid(
  columns: (1fr, auto),
  [*Vikram University, Ujjain* #h(4pt) #text(style: "italic", fill: accent)[BBA, Business Administration]],
  text(fill: luma(40%), "Mar 2022"),
)
#text(fill: luma(35%), size: 9pt)[79%]

// ══════════════════════════════════════════════
//  SKILLS
// ══════════════════════════════════════════════
#section("Skills")

#skill-row("LLM & GenAI",
  "LLaMA, Mistral, LoRA/QLoRA fine-tuning, Prompt Engineering, LangChain, Hugging Face, Transformers, Sentence Transformers, Ollama, OpenAI APIs")
#skill-row("AI Systems",
  "RAG Pipelines, Conversational AI, Agentic AI Workflows, Multi-Agent Systems, OCR & Document AI, Multilingual AI, Vector Search")
#skill-row("ML / DL",
  "PyTorch, Scikit-learn, NumPy, Pandas, SpaCy, Deep Learning, Sentiment Classification")
#skill-row("MLOps & Infra",
  "Amazon EKS, ECS, Lambda, S3, API Gateway, ALB, NLB, AWS Cognito, KEDA, Apache Kafka, Docker, Kubernetes, OpenTelemetry, Grafana, AWS Bedrock, ElevenLabs, Linux")
#skill-row("Vector & Data",
  "Qdrant, OpenSearch, PostgreSQL, MongoDB / AWS DocumentDB, Redis, MySQL, SQLite")
#skill-row("Web & APIs",
  "FastAPI, Flask, REST APIs, WebSockets, Vue.js, React.js, Node.js, Bootstrap, Jinja")
#skill-row("Languages",
  "Python (expert), JavaScript, PHP, SQL, Bash")
#skill-row("Methodology",
  "Conversational AI Architecture, Distributed Microservices, AI Workflow Orchestration, Scalable Inference Pipelines, AI Observability & Monitoring, Kubernetes-based AI Deployments")

// ══════════════════════════════════════════════
//  ACHIEVEMENTS & PROJECTS
// ══════════════════════════════════════════════
#section("Achievements & Projects")

#bul(
  [*Thalaivar of the Year — AIVAR* — Recognized as Employee of the Year for outstanding technical leadership and contribution toward scaling the company's enterprise conversational AI ecosystem.],
  [*Sentiment Prediction on Movie Reviews* — Developed deep learning models for sentiment classification on movie review datasets.],
  [*Blog Lite 2.0* — Vue.js + Flask web app for blogging with likes, comments, and REST API backend (Flask-Restful, Flask-SQLAlchemy).],
  [*Blog Lite* — Multi-user blog sharing platform built on Flask with REST API and SQLAlchemy ORM.],
  [*Algoswarm Hackathon Website* — Designed and developed the official hackathon website using HTML, CSS, and JavaScript.],
)
