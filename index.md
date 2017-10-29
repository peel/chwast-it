---
layout: default
---
<style>
body{}
p,h2{text-align:right;}
audio{width:100%;}
</style>

{% for ep in site.posts %}
## [{{ ep.title }}]({{ site.url }}{{ ep.url }})
{{ ep.excerpt }}
{% endfor %}
