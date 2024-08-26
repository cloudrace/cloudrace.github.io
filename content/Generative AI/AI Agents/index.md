---
title: "AI Agents 101"
date: 2024-08-25T20:51:00+01:00
draft: false
hideLastModified: false
summaryImage: ai_agents_evolution.jpg
showInMenu: false
tags: ["gcp", "generative ai", "ml","ai agents"]
keepImageRatio: true
fontFamily: "sans-serif"

# no need for the "summary" parameter as it is not displayed in any previews
---
 
<p align="center">
# AI Agents Evolution
![alt_text](/images/ai_agents_evolution "image_tooltip")
</p>
Are you 

1. baffled by the AI buzzwords
2.  wanting to understand how generative AI application comes together
3. trying to understand what makes sense for your org?

I hope to cover a series of articles on AI agents. Let's start from the basics. In this article, I walk you through one example of how the patterns for Generative AI applications have evolved in just a year. 

_Disclaimer: The following article is my own comments based on my research and has no bearing on my employer. Any reproduction of this article needs explicit permission from the author._


Over the past year, there has been a surge of interest in Large Language Models (LLMs) and their potential applications. As the field continues to evolve and gain momentum, it is becoming increasingly apparent that the current approaches to LLM applications are insufficient to fully harness their potential.

One of the key limitations of current LLM applications is that they are primarily designed as single-purpose tools. This means that they are only able to perform a narrow range of tasks and require significant adaptation and fine-tuning for each new task. This limitation makes it difficult to scale LLM applications to a wide range of real-world problems and scenarios.

To address this limitation, there is a growing need for a new type of LLM architecture that is capable of supporting a wide range of tasks and applications without the need for extensive adaptation. This new architecture, known as Agentic architecture, takes inspiration from the concept of agents. We will go over this in a more detail topic later

An agent is an entity that is capable of perceiving its environment, taking actions, and learning from its experiences. Agentic architecture applies this concept to LLM applications by providing them with a set of core capabilities that enable them to adapt to different tasks and environments. These capabilities include:



*   **Reasoning:** The ability to understand and interpret the world around them, including natural language, images, and other forms of data.
*   **Action:** The ability to take actions within their environment, such as generating text, answering questions, and controlling physical devices through the use of tools.

By incorporating these capabilities into LLM applications, Agentic architecture enables them to become more versatile and adaptable. This allows them to be applied to a wider range of tasks and problems, from customer service chatbots to autonomous vehicles.

As the field of LLM applications continues to evolve, it is likely that Agentic architecture will become increasingly important. This new architecture has the potential to unlock the full potential of LLMs and revolutionize the way we interact with technology.

While the example showcased here emphasizes the conversational nature of LLMs, their potential impact extends far beyond mere conversational interactions. LLMs are poised to revolutionize multiple facets of our daily lives. Their capacity to comprehend and produce natural language, combined with the potential for integration with other technologies, unlocks a world of opportunities for enhancing efficiency, personalization, accessibility, and overall quality of life. These examples aim to provide insight into the architecture of LLMs and how they can adapt to diverse needs and requirements.


## About “Gemini Getaways”

Imagine you have a fictional travel agency “Gemini Getaways”  looking to adopt “Generative AI” to your travel planning for your customers.

Assumptions on what exists today:



*   Have a database of itineraries with flights, accommodations, sightseeing recommendations, preferences, budgets, key events etc., 
*   For flights current information on availability dependent on an external API
*   For  personalized recommendations, the travel agency maintains customer profile information with their preferences such as stops , duration, pet friendly, family friendly etc.,


## Evolution of Agents: 


### _Foundation Model Call_ :

If you were to create an application that answers for 

> **“Plan a 3 day itinerary to Paris”**

**Action taken:  **

Based on “[Transformer](https://arxiv.org/pdf/1706.03762)” research from Google which is the backbone of LLM



1. Tokenization - question is converted to tokens that are words, subwords, characters
2. Embedding - tokens are converted to vectors (machine understandable) that is semantically and contextually aligned based on the foundation model knowledge source
3. Encoder + Decoder approach - The embedding is then fed to components that predicts the next token based on what it knows.

_More on foundation models [here](https://arxiv.org/pdf/1706.03762)_


### _Few Shot Prompting_

If you were to create an application that answers for

> **“Plan a 3 day trip itinerary to Paris” and you have added two samples such as \
>	 “Plan a 3 day trip itinerary to Rome” and \
>	 “Plan a 3 day trip itinerary to Tokyo” \
>	 with the answers focused on art museums.**

**Action taken:**

This is considered a few shot prompting , the approach similar as above but adds more with influences the LLM's response generation by providing context and examples, leading to more focused, informative, and well-structured answers. Through a few shot tuning you are guiding the foundation model in the template of the outputs and some of the reasoning in this case may be art museums.

_More on few shot prompting [here](https://arxiv.org/pdf/2005.14165)_


### _Fine Tuning_
If you were to create an application that accesses

> **several different itineraries for its answers based on the “Gemini Getaways” database, fine tune them based on your 
> dataset.**

**Action taken: **

Similar approach to our LLM foundation model call however the knowledge source will prioritize from the fine tuned model with the domain expertise before the larger foundation model. Fine tuning is costly as it involves understanding the data, cleaning the enterprise data and labeling. It also involves integration to a MLOps (Machine Learning Operations) platform for CI/CD/CT. 

_More on Fine tuning [here](https://arxiv.org/pdf/2306.09782)_


### _Chain of Thought Prompting_
If you were to create an application that answers for 
> **“ A flight departs San Francisco at 11:00 AM PST and arrives in >Chicago at 4:00 PM CST. 
> The connecting flight to New York leaves at 5:30 PM CST. Is there enough time to make the connection“**

**Action taken: **

For  the above question, though the approach would be similar as before. However the question needs in depth reasoning skills to derive the answer in addition to the knowledge of the foundation model. It is not just knowing the answer but knowing how to get to the answer

This approach above was solved through [“Chain of Thought Prompting”](https://arxiv.org/pdf/2201.11903) paper 

Likely the steps will be to calculate the time zone conversion, layover time calculation, minimum connection time consideration and then calculating for the final result

This chain of thought prompting involves “reasoning” skills with “acting” skills to identify the course of action to take. However the reasoning is limited to the foundation model knowledge. They are very apt for mathematical reasoning and common sense reasoning. 

_More on Chain of thought prompting is [here](https://arxiv.org/pdf/2201.11903)_


### _ReAct Agent_

If you were to create an application that answers for

> **“Book me a flight that leaves Boston to Paris and make itinerary >arrangements for art museums”**

**Action taken: **

["ReAct Based Agent"](https://research.google/blog/react-synergizing-reasoning-and-acting-in-language-models/) - In this research paper by Google, the concept of an Agentic approach with "Reasoning" and "Acting" is introduced, utilizing Large Language Models (LLMs). This approach aims to move forward towards human-aligned task-solving trajectories, enhancing interpretability, diagnosability, and controllability.

Agents, in general, comprise a "core" component consisting of a LLM Foundational Model, Instructions, Memory, and Grounding knowledge. To interact with external systems or APIs, specialized agents are often required. These agents serve as intermediaries, receiving instructions from the LLM and executing specific actions. They may be referred to as **_function-calling agents, extensions, or plugins_**.

We will discuss more about what is an agent and types of agents in a future blog in this series

In the case of booking a flight, the agent would leverage an API call to a booking API to check availability, fares, and make reservations. Additionally, it would utilize a knowledge source containing information about art museums to provide relevant itineraries and recommendations.


### _Multi Agent_

If you were to create an application that answers to 

> **“Book me hotel and flights in New York city that is pet friendly and no smoking”**

**Action taken:**

The example provided showcases a scenario where multiple ReAct agents are chained together. Unlike in previous examples, these agents do not require orchestration; instead, they announce their availability and capabilities through self-declaration. This approach enables seamless collaboration among the agents, allowing them to collectively tackle complex tasks and deliver enhanced user experiences.

By combining multiple agents, tools, and knowledge sources, AI systems can achieve remarkable capabilities. They can handle intricate tasks, provide personalized experiences tailored to individual users, and engage in not only natural and informative conversations but also key aspects of a business's workflow. This integration of various components allows AI systems to become indispensable partners in various domains, offering valuable assistance and automating repetitive or time-consuming tasks.

Overall, the combination of multiple agents, tools, and knowledge sources empowers AI systems to handle complex tasks, deliver personalized experiences, and engage users in a comprehensive and meaningful way. As AI continues to evolve, we can expect even more innovative and groundbreaking applications of this technology, transforming industries and enhancing our daily lives.


### _Autonomous Agent_

If you were to create an application that answers for
>  **“Book me hotel and flights in New york city that is pet friendly, > no smoking and that has availability in both my and > friends calendar”**

Indeed, the path to creating effective Agentic AI systems requires more than just reasoning, acting, or collaboration. It also demands the ability to engage in self-refinement and participate in debates to determine the most optimal outcome.

The examples we have explored demonstrate that while many aspects of Agentic AI can be implemented at a production level today, there are still key areas that require further refinement to achieve true production-level quality.

In the specific example of booking a meeting, we need to combine the actions of booking, incorporate reasoning across multiple filters and bookings, and facilitate collaboration among multiple agents, all while debating the best date for all parties involved. This process requires the ability to self-refine and adapt based on feedback and changing circumstances.

In conclusion, through these seven examples, we have embarked on a journey that showcases how LLM-based architectures are evolving into Agentic AI workflows, which holds the potential to revolutionize our approach to building for the future.

We have witnessed the transformation from a simple foundation model to an autonomous agent, unfolding before our eyes as we explore the evolution of an entire industry at our fingertips.

This is going to be pivotal for any industry we are aligned with



*   **Healthcare:** An AI system that combines medical knowledge, patient data, and diagnostic tools can provide personalized treatment recommendations, early disease detection, and remote healthcare services.
*   **Finance:** An AI system that integrates financial data, market insights, and risk assessment tools can assist in investment decisions, fraud prevention, and personalized financial planning.
*   **Education:** An AI system that combines educational content, interactive learning tools, and assessment platforms can offer personalized learning experiences, adaptive tutoring, and real-time feedback.
*   **Retail:** An AI system that integrates product information, customer preferences, and inventory management tools can provide personalized product recommendations, optimize pricing, and enhance supply chain efficiency.

![alt_text](/images/ai_agent_evolution_examples.jpeg "image_tooltip")


In our future series, we will cover some topics and some example to follow through

2: Agent architectures a new thing?

3: Type of Agents

4: Develop AI Agents

5: Agent Enterprise needs

Do you have other topics in mind, please do suggest
If you have questions/comments/suggestions, please reach out to me [kanch@cloudrace.info](kanch@cloudrace.info)