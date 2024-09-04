---
title: "WTH are AI Agents?"
date: 2024-09-03T20:51:00+01:00
draft: false
hideLastModified: false
summaryImage: ai_agent_wth_1.png
showInMenu: false
tags: ["gcp", "generative ai", "ml","ai agents"]
keepImageRatio: true
fontFamily: "sans-serif"

# no need for the "summary" parameter as it is not displayed in any previews
---
 
# WTH are AI Agents?

As a developer, you may be intrigued by the concept of AI Agents. Despite their growing popularity, the underlying idea is not novel. You may have encountered similar concepts before. The democratization of AI happens when developers have access to new tools that align with their knowledge and experience.

This article aims to bridge the gap between the familiar and the unfamiliar by exploring the similarities and differences between AI Agents and concepts you might have encountered in the past. The goal is to enhance your understanding and utilization of AI Agents.


## “Agent”  as a word

Agent is not a new word. Before software engineering existed, Agents existed. Human agents such as Real estate agents, customer service agents, travel agents etc. The specialty of these agents is they understand the context of the request, they have a catalog of information, based on the input request they service the request. They leverage tools to perform their tasks depending on the role

<b>>>>>>GDCALERT:inline image link here (to images/image1.png). Store image on your image server and adjust path/filename/extension if necessary.>>>>></b>
![alt_text](images/ai_agent_wth_1.png "image_tooltip")


This agent received a request , they consulted the catalog but leveraged some sociocultural reasoning before they created a response. 

For example, Imagine the agent being in a lost and found section, 

 Customer : “Where is my bag?” 

Agent: Checks the catalog does not find the bag _(Reasons and leverages a tool to perform a task)_

Agent: _Seeing the bag on shoulder_. Agent will use their socio reasoning skills to respond “Are you sure it's not in your shoulder?”

Above showcases Reasoning skills, leveraging a tool and performing an action where needed


## Agent in a software world

Let’s look at the word from software perspective,

Then came software engineering concepts, we had an evolution of these agents. We had a series of agents: Network agent, monitoring agent, deployment agent. All of these were meant to orchestrate a workflow, create a consistency for repeatability or in general perform a certain task that a path is clearly defined and a sequence of actions can be defined.

Well, let's see how the Agents have evolved with AI agents.

For ex., Consider writing a monitoring agent that we are going to develop (Simplistic approach)



1.  Initialize monitoring parameters and thresholds. 
2. Continuously collect data from agent logs, performance metrics, and security events. 
3. Aggregate and store data in a central repository. 
4. Perform real-time analysis of data stream: 
    *   Check for anomalies, errors, or security violations. 
    *   If detected, trigger alerts and take appropriate actions. 
5.  Perform historical analysis of data: 
    *   Identify trends, patterns, and potential issues. 
6. Generate reports and visualizations on a regular basis. 
7. Refine monitoring parameters and thresholds based on feedback. 
8. Repeat steps 2-7 continuously.

For the above system, let's write the code in Object oriented programming (hypothetical - with just declarations)


```
import java.util.*; 
public class MonitoringAgent 
{ 
// Member Variables 
private Agent agent; 
private DataRepository repository; 
private AlertingSystem alerter; 
private MonitoringParameters parameters; 

// Constructor public 
MonitoringAgent(Agent agentToMonitor) 
{ // Initialization logic
} 
// Main Monitoring Loop 
public void run() 
{ // Main monitoring loop logic 
} 
// Other Methods (Placeholders) 

// (e.g., for parameter adjustment, historical analysis, etc.) 

} 
```


In the above example, Agent, DataRepository, AlertingSystem, MonitoringParameters are all classes that instantiate objects in this class MonitoringAgent. 

Each of these agents will have:



1. a memory component for knowledge source or external knowledge through files
2. a tool component that executes something else, creates something , analyzes
3. a layer that connects between these agents where needed


## Agents in GenAI

Now let's come to LLM agents, very similar to what we have learnt before with a human agent or a software system built with Object Oriented Programming (OOP) . 

An AI agent is one that leverages reasoning skills, memory and execution skills to complete an interaction. This interaction could be a simple task, simple question, complex task

Reviewing the concepts from the previous two , they all have most things in common

<b>>>>>>GDCALERT:inline image link here (to images/image2.png). Store image on your image server and adjust path/filename/extension if necessary.>>>>></b>
![alt_text](images/ai_agent_wth_2.png "image_tooltip")


And when we discuss AI agents , this is an instantiation of a foundation model that performs a task with its ability of corpus of knowledge its trained on and the grounded information that is available to that LLM

For example, imagine creating a similar monitoring agent with LLM and leveraging the knowledge it has on certain errors, it recommends monitoring agents with recommendations in addition to the capability a regular software agent we built could have provided.

Lets now walk through an [example](https://github.com/GoogleCloudPlatform/generative-ai/blob/main/gemini/function-calling/intro_function_calling.ipynb) that creates an Agent using Gemini with Function calling (tool). We will explore how the agent is defined and how that performs its task using tools and knowledge . You would need a Google Cloud account to test this notebook. Instructions on how to get started [here](https://cloud.google.com/free?e=48754805&hl=en)

Once you get past the installations and declarations, you would find a definition of function


```
def get_exchange_rate(             
    currency_from: str = "USD",
    currency_to: str = "EUR",
    currency_date: str = "latest",
):
    """Retrieves the exchange rate between two currencies on a specified date."""
    import requests

    response = requests.get(
        f"https://api.frankfurter.app/{currency_date}",
        params={"from": currency_from, "to": currency_to},
    )
    return response.json()
```


In this function get_exchange_rate is a tool that calls api.frankfurter.app API


```
agent = reasoning_engines.LangchainAgent(
    model=model,
    tools=[get_exchange_rate],
    agent_executor_kwargs={"return_intermediate_steps": True},
)
```


The Agent definition is done through a Langchain agent with models and tools. This example does not have a grounded information. It is still worth to have it started from here

<b>>>>>>GDCALERT:inline image link here (to images/image3.png). Store image on your image server and adjust path/filename/extension if necessary.>>>>></b>
![alt_text](images/ai_agent_wth_3.png "image_tooltip")


_What we don't know_



*   Smaller vs Larger - There is still debate about if a large AI agent will be needed to solve a complex problem or if smaller AI agents will focus on excelling certain tasks.
*   Cons of LLM follow - Agents being an evolution of LLMs still has all the cons such as Hallucinations 
*   Autonomous - Though autonomous agents are starting to get the hype and we see prototypes, it's still a challenge to create an enterprise application without Human in the loop

Thanks to [Hussain Chinoy](https://www.linkedin.com/in/ghchinoy/)for the brainstorming and his relentlessness to make sure we don’t forget and learn from our mistakes of software engineering. If you are looking for best practices may be a good place to start would be from software development

In our future series, we will cover

3: Type of Agents

4: Develop AI Agents

5: Agent Enterprise needs

Do you have other topics in mind, please do suggest
If you have questions/comments/suggestions, please reach out to me [kanch@cloudrace.info](kanch@cloudrace.info)