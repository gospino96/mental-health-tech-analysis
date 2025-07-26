# Mental health tech analysis
The objective of this study is to perform an exploratory data analysis using a public dataset that includes information on work productivity, mental health status, working hours, work-life balance, and other key factors. The goal is to understand the causes of high burnout, poor mental health, and weak communication, and to develop strategies that improve productivity without negatively affecting employees’ quality of life.

**Business Questions**

•	Which age group is the most productive by work mode?

•	Does the number of working hours impact productivity?

•	Are there trends in productivity tied to specific work modes among tech employees?

•	What factors contribute to low productivity?

•	Is there a relationship between mental health and productivity?

•	How can productivity be improved through habits and working conditions?

**Hypotheses**

•	Employees are more productive when working remotely.

•	Younger employees are the most productive.

•	Higher productivity is associated with better mental health.

•	More working hours do not necessarily mean higher productivity.

•	Older employees perform better when working on-site.

•	Sleep hours influence burnout levels.

**Insights & Recommendations**

**1. Work Mode & Age Group Productivity**
For employees aged 28–35, the hybrid work mode yields the highest productivity score, averaging 6.5, which is 0.4 points higher than remote or on-site work. This suggests that some in-person interaction—likely through networking and informal collaboration—may benefit younger professionals.
For the 36–41 age group, the overall productivity is lower compared to other groups. However, within this group, working on-site produces the best productivity score, averaging 5.8.
Interestingly, the oldest group (41–48) performs best remotely, with an average productivity score of 6.6, the highest across all categories. This contradicts the initial hypothesis that older employees perform better on-site.

**2. Burnout & Work-Life Balance**
By categorizing employees by experience level, it was found that junior employees report the highest burnout scores, averaging 58.2. Surprisingly, more sleep did not correlate with lower burnout in this group—in fact, junior employees who sleep more still report high burnout.
In contrast, expert-level employees report the lowest burnout score (44) and the highest work-life balance rating (6.7). This suggests that experience plays a role in developing better boundaries and healthier habits over time.

**3. Productivity vs. Burnout**
Productivity appears to be closely linked to how well burnout is managed. Hybrid work mode stands out again here, with an average productivity score of 6.3 and a relatively low burnout score (below 48), the lowest among all work modes.

**4. Working Hours & Productivity**
There is no clear relationship between total working hours and productivity. For instance, in Germany—where employees average 43.5 hours per week, one of the highest among the countries studied—the productivity score is also the highest (6.65).

**Recommendations**

**1. Tailor Work Mode by Age Group**
Older employees perform best when working remotely, while younger professionals benefit from some on-site interaction. Companies could adopt flexible hybrid schedules, offering older staff more remote options while encouraging younger employees to come in for key meetings, training sessions, or project kick-offs. Full-time on-site work is the least productive mode based on this analysis.

**2. Enhance Communication Without Full On-site Work**
Although on-site work shows slightly better communication effectiveness, it’s not the most productive. Companies can bridge this gap by setting up intentional communication spaces (virtual or physical) for sharing goals, milestones, and feedback. This strengthens trust and encourages employees to speak up about blockers or ideas—improving outcomes for already-productive teams.

**Tools Used**

- MySQL
- Tableau Public
- GitHub


## 📜 SQL Analysis

📁 [View SQL file](https://github.com/gospino96/mental-health-tech-analysis/blob/main/Mental_health_project.sql)

## 📈 Tableau charts


🔗 [Mental health indicators by Experience category](https://public.tableau.com/app/profile/ginna.ospino/viz/MentalhealthindicatorsbyExperiencecategory/Hoja2)

🔗[Impact of work life balance on productivity ](https://public.tableau.com/app/profile/ginna.ospino/viz/Impactofworklifebalanceontheproductivity/Hoja1)

🔗[Relation between productivity and burnout by gender](https://public.tableau.com/app/profile/ginna.ospino/viz/Relationbetweenproductivityandburnoutbygender/Hoja1)

🔗[Analysis of productivity by age category and work mode](https://public.tableau.com/app/profile/ginna.ospino/viz/Analysisofproductivitybyagecategoryandworkmode/Hoja1)

