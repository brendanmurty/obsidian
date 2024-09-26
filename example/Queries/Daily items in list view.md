```dataview
table without id
	file.link as Entry,
	file.ctime as Created
from "Personal/Daily"
sort file.ctime desc
```