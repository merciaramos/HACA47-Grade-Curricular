from openai import OpenAI
import pandas as pd

df = pd.read_excel("Answers - HACA47.xlsx")


client = OpenAI(api_key='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')


avaliacoes = []

for index, row in df.iterrows():
    chat_completion = client.chat.completions.create(
    messages=[
        {
            "role": "user",
            "content": "preciso que você compare e avalie as resposta para uma pergunta; uma resposta é a correta, que foi escrito por uma pessoa; a outra resposta foi feita por ia. compare as duas respostas e me diga uma nota de 0 a 10 para quão próximo a resposta da ia está da resposta correta. informe a nota e faça uma pequena justificativa da resposta. /// pergunta: " + row['Question'] + "/// respostas correta: "  + row['Answer group'] + "/// resposta pela ia: " + row['Answer IA - Ollama'],
        }
    ],
    model="gpt-4o",
    temperature=0.5 
    )

    avaliacoes.append(chat_completion.choices[0].message.content)
    chat_completion.choices[0].message.content


    
df['Avaliação'] = avaliacoes

df.to_excel('result.xlsx')