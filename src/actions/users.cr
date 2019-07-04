module DppmRestApi::Actions::Users
  include RouteHelpers
  extend self
  relative_put nil do |context|
    if Actions.has_access? context, Access::Create
      # TODO: apply an edit to a batch of users
    end
    raise Unauthorized.new context
  end
  relative_delete nil do |context|
    if Actions.has_access? context, Access::Delete
      # TODO: delete a batch of users
    end
    raise Unauthorized.new context
  end
  relative_get nil do |context|
    if Actions.has_access? context, Access::Read
      # TODO: get info on a batch of users
    end
    raise Unauthorized.new context
  end
end
