Regex_Pattern = r'^(Mr?s|[MDE]r)\.([a-zA-Z]+)$'	# Do not delete 'r'.

import re

print(str(bool(re.search(Regex_Pattern, input()))).lower())
