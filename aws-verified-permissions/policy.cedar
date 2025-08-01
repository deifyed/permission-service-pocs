permit (
  principal is schemas::User,
  action == schemas::Action::"ViewSchema",
  resource is schemas::Schema
) when {
  principal.member_of == resource.owner
};
