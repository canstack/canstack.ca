---
layout: default
title: blog.canstack.ca
---
  <ul class="posts">
    {% for post in site.posts %}
      <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
  </ul>


</div>

  <div class="horizontal-line"></div>
