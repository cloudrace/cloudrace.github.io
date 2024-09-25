---
title: "A Typology of AI Agents"
date: 2024-09-25T12:51:00+01:00
draft: false
hideLastModified: false
summaryImage: agent_complexity.png
showInMenu: false
tags: ["gcp", "generative ai", "ml","ai agents"]
keepImageRatio: true
fontFamily: "sans-serif"

# no need for the "summary" parameter as it is not displayed in any previews
---

_Disclaimer: The following article is my own comments based on my research and has no bearing on my employer. Any reproduction of this article needs explicit permission from the author. The article discusses concepts that are rapidly changing and needs to be considered as point of time as of this release in September , 2024_

We uncovered some of the key concepts of Agents earlier ([Evolution](https://cloudrace.info/generative-ai/ai-agents/) and [What are Agents](https://cloudrace.info/generative-ai/ai_agent_wth/)). In this document, we walk through several different types of AI Agents. 

Before we delve into the topic of agent types and their involvement, it's essential to understand that there is no one-size-fits-all approach. Different perspectives and interpretations exist, and the following is my personal viewpoint. As Andrew Ng once wisely [said](https://x.com/AndrewYNg/status/1801295202788983136), "The only way to learn is to build things." With that in mind, let's explore some of the agent types and their potential roles:

In our current world today, we see most vendors and platforms emphasizing conversational agents as “THE” AI Agents. Every website today has a “kind” of Virtual agent or conversational AI agent. 

We would need to first understand what is difference between a chatbot vs virtual agent vs conversational AI agent

**Chatbot:** A basic program designed to simulate conversation through text or voice, often following scripted interactions. (This existed pre-generative AI)

**Virtual Agent:** A more advanced AI that can perform specific tasks and provide support, often incorporating natural language processing and contextual understanding (This also existed pre-generative AI).

**Conversational AI Agent:** An intelligent system capable of understanding, processing, and generating human-like dialogue across various contexts, often using machine learning to improve interactions over time.

Then the question comes to are conversational AI agents the only ones? The surfaces for AI agents development are evolving towards a workflow based approach where there is reasoning, planning, evaluation, execution is needed

Below we differentiate the types based on surface, complexity and domain. 

**Based on surface:**

In an Enterprise, we see a few types of agents based on the surface. Some of these are based on conversational just as we mentioned above. and some of these are based on workflow orchestration. 
We classify the agents based on the surface as below 
**Conversational Agents** (Collaborative Agents and Assistive Agents)
**Workflow Orchestration Agents** (Supervisory, Collaborative and Autonomous)

More on examples and purpose below
![alt_text](/images/agent_complexity.png "Agent Complexity")


**Based on the complexity**


*   **Single** - When an agent performs **reasoning and acting**(ReAct)
    *   with its LLM (Foundation model or a Fine tuned model)
    *   with its one or more context through a RAG based data store
    *   with its one or more Tools based on OpenAPI schema (any API calls)
    *   with its session based access information
    *   with its episodic memory
    *   with its prompts that adopt a persona, clear instructions and few shot
*   **Multiple** - When multiple agents are orchestrating towards a completion of a task
    *   with their observation on the other agents tasks and completion
    *   with their collaboration on orchestration of multiple agents
*   **Autonomous** - When agents perform tasks that does not require intervention and can execute 
    *   with their self refinement
    *   with their self learning
    *   with their scaling up and down based on the task needs

**Based on the domain**

We see a plethora of companies swarming the market with their own version of Autonomous agents to drive adoptions of their platforms. It can be considered as an evolution of a SaaS platform with more and more Agents in a marketplace. While some of these organizations have started with a chatbot as a starting point, it would be a quick turnaround to “Reason and Act”



*   [Salesforce Agents](https://www.salesforce.com/blog/ai-software-development/)
*   [Workday Agents](https://investor.workday.com/2024-09-17-Workday-Announces-New-AI-Agents-to-Transform-HR-and-Finance-Processes)
*   [Adobe Sensei](https://www.adobe.com/ai/overview.html)
*   [Hubspot Breeze](https://www.hubspot.com/products/artificial-intelligence)
*   [Service Now AI Agent](https://www.servicenow.com/products/ai-agents.html)

Though these are the types of agents, there are several different types based on “n” number of classifications. For now, lets focus on what are the frameworks available in the market to deploy these agents

Popular frameworks available in the market to build AI agents include 

**Langchain & Langgraph**

**Crew AI** 

**Autogen**  

**Llama Index**

**One Two**

Though there are popular frameworks, the overhead of these frameworks are starting to give a pause on widespread adoption. There are certainly adoptions that benefit from it. However, the rising concept of LLMOps/GenOps will need to be certainly evaluated for AI agents and there is certainly more to come. 

In our further series , we will get to do hands on how we can start building agents 

This post is cross posted in [Medium](https://medium.com/@kpatlolla/a-typology-of-ai-agents-d5bb016c3821), [LinkedIn](https://www.linkedin.com/pulse/typology-ai-agents-kanchana-patlolla-6ag3c/?published=t) and [my blog](https://cloudrace.info/generative-ai/types_of_agents/).As always please reach out to [kanch@cloudrace.info](mailto:kanch@cloudrace.info) for questions/thoughts/suggestions
