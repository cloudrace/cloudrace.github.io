---
title: "Don't Just Chat, Charm: Crafting Virtual Agents with Personality"
date: 2024-11-03T10:51:00+01:00
draft: false
hideLastModified: false
summaryImage: imagen-conversationalagent.png
showInMenu: false
tags: ["gcp", "generative ai", "ml","ai agents"]
keepImageRatio: true
fontFamily: "sans-serif"

# no need for the "summary" parameter as it is not displayed in any previews
---
 
![alt_text](/images/imagen-conversationalagent.png "image_tooltip")

_Disclaimer: The following article is my own comments based on my research and has no bearing on my employer. Any reproduction of this article needs explicit permission from the author. The article discusses concepts that are rapidly changing and needs to be considered as point of time as of this release in November , 2024_


# Don't Just Chat, Charm: Crafting Virtual Agents with Personality

By this point you are curious and getting ready to get hands on with the hands on guide for how to develop AI agents particularly as many would like to start as a conversational agent.

Reminder on some of the definitions we discussed [before](https://cloudrace.info/generative-ai/types_of_agents/)

**Chatbot:** A basic program designed to simulate conversation through text or voice, often following scripted interactions. (This existed pre-generative AI)

**Virtual Agent:** A more advanced AI that can perform specific tasks and provide support, often incorporating natural language processing and contextual understanding (This also existed pre-generative AI).

**Conversational AI Agent:** An intelligent system capable of understanding, processing, and generating human-like dialogue across various contexts, often using machine learning to improve interactions over time.

When we consider the evolution of chatbots -> virtual agents - > conversational agents , the complexity of them have progressed based on the expanded needs of the customer and also the technology advancements

![alt_text](/images/conv2.png "image_tooltip")

Before we delve into how to work with conversational agents ? lets dig into the key concepts for building a chatbot

If you have interacted with a conversational system (let's forget for a moment what category the application is) you might have seen some of these behaviors

![alt_text](/images/conv3.png "image_tooltip")

The goal now is to learn how to build this application, that can take questions in a natural language format and create actions we need. This sounds like a finite state machine. If you are aware of the concept. Definition of Finite State Machines [here](https://en.wikipedia.org/wiki/Finite-state_machine). But are they finite state machines if they are generative (that's a discussion for another day)?  

The industry has thus far been focused on Bots, virtual agents, generative agents. But do we stop there , do we have a need for an hybrid agent that combines the best of both worlds from a deterministic flow with a generative handling. Hybrid agents will provide the guard rails we need for a rule based system.  

The time when Finite state machines and generative AI cross will redefine the conversational experience of users. No longer will a user be asked to interact with a specific set of menus and options, users will expect an experience that will be personalized for them based on their interests.

On to the code, Here is a code lab that walks through the generation

[Part I] Building the Tool

https://codelabs.developers.google.com/smart-shop-agent-alloydb?hl=en#0

[Part II] Building the Agent

https://codelabs.developers.google.com/smart-shop-agent-vertexai?hl=en#0 

that you can walk  through the setup of building an agent by yourself. 

I highly recommend watching this video from [Patrick Marlow](https://www.linkedin.com/in/kmaphoenix/) walking through an Agent and its concepts[What is a Generative AI Agent?](https://www.youtube.com/watch?v=WNsJNIVALwY)and [Workflow Agent Automation](https://www.youtube.com/watch?v=GwQi33fmexU&t=1665s)

**Why Conversational Agents?**

It's a mature product from Google that existed over 10 years , understands the Enterprise challenges and limitations and has a path for deterministic and generative flow

-[ Api.ai](http://Api.ai) launched 2014

- Google buys[ Api.ai](http://Api.ai) in 2016 and rebrands to Dialogflow (later known as Dialogflow ES)

- Dialogflow CX launched in August 2020 w/ first[ API release](https://github.com/googleapis/python-dialogflow-cx/releases/tag/v0.1.0) and UI

- Dialogflow CX adds [GenAI features](https://github.com/googleapis/google-cloud-python/releases?expanded=true&page=2&q=dialogflow-cx) in GA August 2023 (i.e. Generators, Datastore Agents, Generative Fallback)

If you would like to do further and expand such as Evaluations on DFCX agents, NLU analysis, bot building please review https://github.com/GoogleCloudPlatform/dfcx-scrapi

We learnt the concepts in building a conversational agent and the tools to build it.

Next week, lets focus on Agents from integrating to a workflow perspective

This post is cross posted in [Medium](https://medium.com/@kpatlolla/a-typology-of-ai-agents-d5bb016c3821), LinkedIn and [my blog](https://cloudrace.info/generative-ai/types_of_agents/). As always please reach out to [kanch@cloudrace.info](mailto:kanch@cloudrace.info) for questions/thoughts/suggestions
