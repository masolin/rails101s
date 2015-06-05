module GroupsHelper
def render_group_title(title)
  truncate(title, length: 15)
end
end
