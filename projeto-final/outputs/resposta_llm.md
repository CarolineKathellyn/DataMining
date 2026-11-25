## 1. Principais padrões: o que distingue as faixas de qualidade

| Faixa de qualidade | Nº de vinhos | Álcool (° % vol) | Acidez volátil (g/dm³) | Sulfatos (g/dm³) | Ácido cítrico (g/dm³) | Densidade (g/cm³) | SO₂ total (mg/dm³) | Distância média ao centro |
|--------------------|--------------|------------------|------------------------|------------------|-----------------------|-------------------|--------------------|----------------------------|
| **Baixa (3‑4)**    | 63           | 10.2             | 0.724                  | 0.592            | 0.174                 | 0.997             | 34.4               | 3.53                       |
| **Média (5‑6)**    | 1 112        | 10.3             | 0.539                  | 0.648            | 0.261                 | 0.997             | 49.4               | 2.98                       |
| **Alta (7‑8)**     | 184          | 11.6 **↑**       | 0.406 **↓**            | 0.746 **↑**      | 0.373 **↑**           | 0.996 **↓**       | 35.4 **↓**         | 3.35                       |

* Tendência clara: **vinhos de qualidade alta apresentam maior teor alcoólico e maior concentração de sulfatos e ácido cítrico**, ao mesmo tempo em que têm menor acidez volátil, densidade ligeiramente menor e menor teor total de SO₂.
* A faixa média tem valores intermediários, mas destaca‑se pelo **maior SO₂ total** (possível efeito conservante) e pela menor acidez volátil que a baixa, porém ainda acima da alta.
* A distância média ao centro (mediana 2.80) é menor para a faixa média (2.98) que para as faixas baixa (3.53) e alta (3.35), indicando que a maioria dos vinhos “médios” está mais próximo do perfil global.

---

## 2. Vinhos mais semelhantes

| Par de vinhos | Distância | Notas | Observação |
|---------------|-----------|-------|------------|
| 1514 – 1515   | 0.015 | 6 – 6 | Quase idênticos nos 11 atributos padronizados. |
| 1439 – 1444   | 0.031 | 6 – 6 | Muito próximos; mesma nota. |
| 1475 – 1477   | 0.031 | 7 – 7 | Alta qualidade, perfil químico quase igual. |
| 1441 – 1445   | 0.031 | 6 – 6 | Distância mínima entre vinhos de nota média. |
| 1191 – 1193   | 0.058 | 5 – 5 | Ainda muito próximos, nota baixa‑média. |

* **Proporção de pares com mesma nota:** 72 % nos 100 pares mais próximos vs. 35 % no conjunto total de pares.
* **Interpretação:** a proximidade Euclidiana nos atributos padronizados tende a refletir a nota de qualidade, mas não de forma determinística – ainda há pares muito próximos com notas diferentes (não listados aqui). A alta concordância (72 %) indica que vinhos com composição química quase idêntica costumam receber avaliações semelhantes, sugerindo que os atributos selecionados capturam parte da percepção de qualidade.

---

## 3. Vinhos atípicos

| Vinho | Distância ao centro | Nota | Atributos que mais se destacam |
|-------|---------------------|------|--------------------------------|
| 151   | 14.34 | 4 | Cloretos = 0.61 (z = +10.6), Sulfatos = 2 (z = +7.9) |
| 258   | 11.70 | 5 | Cloretos = 0.611 (z = +10.6), Sulfatos = 1.26 (z = +3.5) |
| 1434  | 10.92 | 6 | Açúcar residual = 15.4 (z = +9.5), Densidade = 1.004 (z = +3.7) |
| 480   | 10.49 | 5 | Açúcar residual = 15.5 (z = +9.6), Densidade = 1.003 (z = +3.2) |
| 1474  | 9.65  | 5 | Açúcar residual = 13.8 (z = +8.3), Densidade = 1.002 (z = +3.1) |

* **Por que se afastam?**
  * **Cloretos** e **sulfatos** extremamente altos (vinhos 151 e 258) podem indicar adição excessiva de sal ou processos de vinificação incomuns, o que os coloca longe do “centro” químico.
  * **Açúcar residual** muito elevado (vinhos 1434, 480, 1474) eleva a densidade e cria perfis doces incomuns para vinhos tintos, afastando‑os do padrão geral.
* **Hipóteses:**
  * Esses vinhos podem ser **estilos especiais** (por exemplo, vinhos de sobremesa ou fortificados) que não foram filtrados na seleção original.
  * A presença de valores tão extremos pode refletir **erros de medição ou registro** (por exemplo, unidades equivocadas).
  * O baixo número de notas altas entre os mais atípicos (apenas um 6) sugere que desvios extremos podem estar associados a avaliações menos favoráveis, embora isso precise ser testado estatisticamente.

---

## 4. Conclusão curta

Os pares mais semelhantes são os vinhos 1514‑1515, 1439‑1444, 1475‑1477, 1441‑1445 e 1191‑1193, que apresentam distâncias quase nulas e notas idênticas, indicando forte concordância entre composição química e avaliação. Os vinhos mais afastados do perfil geral são 151, 258, 1434, 480 e 1474, cujos valores extremos de cloretos, sulfatos ou açúcar residual os tornam atípicos.

---

## 5. Perguntas adicionais que valeria investigar

1. **Qual a influência individual de cada atributo (ex.: álcool, sulfatos, açúcar residual) na probabilidade de um vinho receber nota alta, usando modelos de importância de variáveis (e.g., regressão logística ou árvore de decisão)?**
2. **Os vinhos atípicos (especialmente os com cloretos e sulfatos muito altos) pertencem a alguma sub‑categoria de produção (região, tipo de uva, método de vinificação) que justifique esses valores extremos?**