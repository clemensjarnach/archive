---
title: "British Voting Intentions: From the 2019 General Election to the Present Day"
#author: "Clemens Jarnach"
#date: "2023-03-05"

output:
  bookdown::pdf_document2:
    keep_md: true
    toc: FALSE
    number_sections: FALSE
    extra_dependencies: 
      - "flafter"
      - "float"
    includes:
      in_header: "preamble.txt"
geometry: margin=1in
links-as-notes: true
---
**Author:** Clemens Jarnach  
**Date:** *March 05, 2023*  




The United Kingdom held a general election in December 2019, which resulted in the Conservative Party securing a parliamentary majority, marking a decisive shift in the country's political landscape. The Labour Party, on the other hand, suffered its worst electoral defeat since 1935 (Goes, 2020). Since the election, however, the political situation in the UK has been far from stable. The issue of Brexit continued to dominate political discourse, and the COVID-19 pandemic posed new challenges for both government and opposition parties.  This article shows the volatility and strong movement in voting intentions of the British electorate since the 2019 general election. 

As we are now 3/5 of the way through the current political term, we can begin to gently speculate on the outcome of the UK general election in 2025. The election is due to be held no later than 24 January 2025. The political turmoil of the past few years, including the Dominic Cummings and Partygate scandals, has had a significant impact on the popularity of the Conservative Party. Following Boris Johnson's resignation, there was a Tory leadership race, which Liz Truss won, only to resign after 45 days due to the ongoing economic crisis (Nevett & Whannel, 2022). Rishi Sunak then became leader of the Conservative Party without a vote. According to Fisher (2022), the polls and the local elections in May 2022 suggest that Labour is ahead, with the Conservatives looking weak. Back in May last year, Fisher (2022) predicted that the Conservatives would lose 112 seats and Labour would gain 88 at the next general election, based on the projected House of Commons seats from the Projected National Share (PNS). So the Conservatives' future looked bleak this time last year, but the latest polls suggest that this trend is becoming even more pronounced.

# Vote Share Trends
Table \@ref(tab:voteShare) presents the yearly averages of vote share percentages for seven major political parties in the UK, from 2020 to the first few months of 2023. The table shows that the Conservative Party (Con) had the highest vote share in 2020 with 43%, followed by the Labour Party (Lab) with 36%. The Liberal Democrats (LibDem) had 6% while Scottish National Party (SNP) and the Green Party each had 5% of the vote. The Brexit Party (RefUK) had 3% of the vote, while the other parties together had 2% of the vote. 

\begin{table}[!h]

\caption{(\#tab:voteShare)Vote Share Yearly Averages (\%)}
\centering
\begin{threeparttable}
\begin{tabular}[t]{rrrrrrrr}
\toprule
year & Con & Lab & LibDem & SNP & Grn & RefUK & Other\\
\midrule
2020 & 43 & 36 & 6 & 5 & 5 & 3 & 2\\
2021 & 40 & 34 & 8 & 5 & 8 & 4 & 2\\
2022 & 30 & 41 & 10 & 5 & 7 & 4 & 2\\
2023 & 24 & 47 & 9 & 4 & 6 & 7 & 2\\
\bottomrule
\end{tabular}
\begin{tablenotes}[para]
\item \textit{Source:} 
\item Data: YouGov Westminster Voting Intension Tracker, Feb 2023
\end{tablenotes}
\end{threeparttable}
\end{table}


Both main parties lost voters in 2021, with the Conservatives' share of the vote falling by 3 percentage points and Labour's by 2 points.  The winners were the Liberal Democrats and the Greens, who gained 2 and 3 percentage points respectively. The Reform UK also gained with 1 percentage point increase.  
 
In 2022, the Conservative Party's share of the vote fell sharply to 30%, while Labour's share of the vote increased to 41%. The Liberal Democrats gained, securing 10% of the vote, while the SNP and the Green Party secured an annual average of 5% and 7% of the vote respectively. There was no change for the Reform UK. 
Finally, in 2023 (at the end of February), the Conservative Party's share of the vote fell further to 24%, while Labour's share increased to 47%. The Liberal Democrats, the SNP and the Greens saw their share of the vote fall slightly by 1 percentage point, while Reform UK saw a relatively significant jump from 4% to 7% of the vote share in the first two months of this year.

Overall, the clear losers in terms of vote share are the Tories, with the Conservative Party experiencing a decline in support from 2020 onwards. Labour picks up some of this, with an overall increase in support from 2021. These figures also highlight the struggle for votes among the smaller parties, with the Liberal Democrats and the Green Party both making slow but steady gains. It will be interesting to see how Refrom UK's share of the vote develops this year, and whether it can maintain its growth throughout the year. 

Figure @ref(fig:fig1) presents a visual representation of the vote share trends for each political party, which offers a more nuanced understanding than the data presented in Table \@ref(tab:voteShare). The figure clearly shows how the Conservative Party's vote share falls from around half of all votes in 2020, following their general election victory in December 2019, to a dramatic drop to around 24% in 2023. By contrast, Labour's vote share rises from around 30% in early 2020 to 47% in 2023. The Liberal Democrats, Scottish National Party (SNP), Green Party, and Reform UK all have fluctuating vote intentions as they fight for (undecided and swinging) voters. Overall, this figure demonstrates the changing dynamics of British politics in recent years.

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{plot2} 

}

\caption{Vote Intention for the Next UK General Election}(\#fig:fig1)
\end{figure}
\

# Electoral Expectations by Voters

Table \@ref(tab:voteExpect) shows voters' election expectations for the next UK general election between 2019 and 2023. The percentages represent the average percentage of voters expecting a big Conservative win, a small Conservative win, a hung Conservative parliament, a hung Labour parliament, a small Labour win, a big Labour win, and those who are undecided in that year. For a more detailed picture of the electoral expectations, see Figure \@ref(fig:fig2).
\begin{table}[!h]

\caption{(\#tab:voteExpect)Electoral Expectations by Voters Yearly Averages (\%)}
\centering
\begin{threeparttable}
\begin{tabular}[t]{rrrrrrrr}
\toprule
year & Large Con. & Small Con. & Hung Con. & Hung Lab. & Small Lab. & Large Lab. & Don't know\\
\midrule
2019 & 8 & 21 & 26 & 12 & 4 & 2 & 27\\
2020 & 16 & 25 & 10 & 7 & 7 & 3 & 33\\
2021 & 12 & 33 & 12 & 6 & 5 & 2 & 29\\
2022 & 3 & 20 & 15 & 14 & 13 & 8 & 27\\
2023 & 2 & 8 & 12 & 12 & 24 & 18 & 24\\
\bottomrule
\end{tabular}
\begin{tablenotes}[para]
\item \textit{Source:} 
\item Data: YouGov 'Who do people THINK will win the next election', Feb 2023
\end{tablenotes}
\end{threeparttable}
\end{table}

 In 2019, the majority of voters expected a hung parliament, with the Conservatives receiving the highest average percentage of the vote. In 2020, after the Conservatives won the general election, expectations were clearly in favour of the Conservative party. In 2021, the proportion of voters expecting a big Conservative win fell, while the proportion expecting a small Conservative win and a hung Conservative parliament rose slightly. Notably, there was a significant shift in 2022, with a significant proportion of voters expecting a hung Labour parliament or a small Labour win, while only 3% are still confident that the next general election will be a big Conservative win. This narrative becomes even stronger in 2023, when there is a further shift, with a higher proportion of voters expecting a big Labour win and a fall in the average proportion of voters expecting a Conservative win. Confidence in the Conservative party has fallen, with only 10% now expecting a large or small Conservative win, while a sizeable 42% believe Labour will win. 

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{plot3} 

}

\caption{Electoral Expectations for the Next UK General Election as Perceived by the Voters}(\#fig:fig2)
\end{figure}

Overall, these results suggest a significant shift in electoral expectations over the past few years, with Labour gaining momentum and Conservative support declining. However, it is worth noting that in each of the years covered by the data, 24% to 33% of respondents answered 'don't know' to the question 'What do you think is the most likely result of the next general election?', suggesting a significant level of uncertainty or lack of information among the British electorate.


# Conclusion
This article illustrates how the Conservative Party's vote share has experienced a significant decline, dropping from around 50% following their general election win in 2019 to just 24% in 2023. The latest polls, along with the May 2022 local election results, indicate that the Conservatives are facing a tough time while Labour is gaining support from voters. As of today, overall confidence and expectations of a Labour victory have increased, with a significant proportion of voters expecting a small or large Labour victory at the next general election in 2025. 



# Method and Data
The data used in this article comes from the YouGov Westminster Voting Intension Tracker (2019 GE to present) and from the YouGov "Who do people THINK will win the next election" Survey. YouGov is a reputable and widely recognised polling service. The Tracker data is regularly updated and provides valuable insight into the evolving political landscape in the UK.
The trend lines in Figure @ref(fig:fig1) are estimated using a local polynomial regression (LOESS), which fits a local non-parametric regression model to each data point. In this case, the model fits a regression line to the data points within 30% of the range of the data.


# References 
Fisher, Stephen. (2022, May 6). Local elections Projected National Share (PNS) of the vote 2022. ElectionsEtc. Retrieved March 3, 2023, from https://electionsetc.com/2022/05/06/local-elections-projected-national-share-pns-of-the-vote-2022/#more-2714.

Goes, Eunice. (2020). Labour's 2019 campaign: A defeat of epic proportions. Parliamentary Affairs, 73(Supp_1), 84-102.

Nevett, & Whannel. (2022, October 20). Liz Truss resigns: PM’s exit kicks off another Tory leadership race. BBC. Retrieved March 5, 2023, from https://www.bbc.co.uk/news/uk-politics-63332037

YouGov, (2023). YouGov Who do people THINK will win the next election Survey [Data file]. Retrieved from https://yougov.co.uk/_pubapis/v5/uk/trackers/who-do-people-think-will-win-the-next-election/download/.

YouGov, (2023). YouGov Westminster Voting Intention Tracker (2019 GE to present) [Data file]. Retrieved from https://docs.cdn.yougov.com/kpdyww5jvq/YG%20trackers%20-%20Voting%20Intention%20since%20GE%202019_W.pdf.

