# Projeto Final: perfis de vinhos tintos semelhantes e atípicos

Projeto Final Individual de Mineração de Dados com apoio de LLM via API. A proposta (Entrega 1) está em `../6-11/`.

**Pergunta:** quais vinhos apresentam composição físico-química mais parecida entre si e quais se afastam mais do perfil geral da base?

**Técnicas:** verificação de ausentes e duplicidades, outliers (IQR e Z-score), engenharia e seleção de atributos, padronização (z-score), distância Euclidiana (pares mais próximos e distância ao centro da base) e agregações com Pandas por faixa de qualidade. Depois disso, um resumo agregado é enviado à LLM (Groq) para interpretação, e a resposta é conferida com os números calculados.

## Entregas

| Entrega | Onde |
| --- | --- |
| Código | `projeto_final.ipynb` |
| Dataset | `data/winequality-red.csv` ([UCI](https://archive.ics.uci.edu/dataset/186/wine+quality) / [Kaggle](https://www.kaggle.com/datasets/uciml/red-wine-quality-cortez-et-al-2009)) |
| Resultados | `outputs/pares_mais_semelhantes.csv`, `outputs/vinhos_mais_atipicos.csv`, `outputs/estatisticas_por_faixa.csv`, `outputs/resumo_estruturado.txt` |
| Integração LLM | seção 5 do notebook, `outputs/prompt.txt` e `outputs/resposta_llm.md` |
| Conclusão | seções 6 e 7 do notebook |

## Como rodar

```bash
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt

cp .env.example .env     # e coloque sua chave em GROQ_API_KEY
jupyter notebook projeto_final.ipynb
```

A chave da Groq é criada em [console.groq.com/keys](https://console.groq.com/keys) e fica no `.env`, que está no `.gitignore`. **Nunca coloque a chave no notebook.**

A LLM dá uma resposta um pouco diferente a cada chamada. Por isso o notebook reaproveita a resposta salva em `outputs/resposta_llm.md`, que é a avaliada na seção 6, e a análise roda igual sempre (inclusive sem chave). Para consultar a LLM de novo, mude `CONSULTAR_LLM_DE_NOVO = True` na seção 5 e reescreva a avaliação da seção 6 para a nova resposta.

## Como apresentar

Siga o notebook de cima para baixo:

1. **Resumo em 1 minuto** (topo): a resposta da pergunta em quatro linhas.
2. Em cada seção, o **gráfico** e a caixa **Achado** logo abaixo, que é o ponto para falar.
3. A tabela **Acertou / Errou** da seção 6 e a **Conclusão** da seção 7.

As células de consulta (estatísticas completas, funções auxiliares) podem ser puladas.
