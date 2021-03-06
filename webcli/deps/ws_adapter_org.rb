
module Org
  ###########################################################
  ## Org functions
  ###########################################################
  
  def create_org(name,org_type_id,intro)
    
    data = {
      "cmd" => "create_org",
      "name" => name,
      "org_type_id" => org_type_id,
      "intro" => intro
    }
    
    send_data(data)
  rescue
    process_exception($!)
  end
  
  def modify_org(name,orgId,intro)
   
    data = {
      "cmd" => "modify_org",
      "name" => name,
      "orgId" => orgId,
      "intro" => intro
    }
    
    send_data(data)
  rescue
    process_exception($!)
  end
  
  def describe_orgs(owner=nil)
    
    data = {
      "cmd" => "describe_orgs"
    }
    
    data['owner'] = owner unless owner.nil?
    
    send_data(data)
  rescue
    process_exception($!)
  end
  
  def create_orgtype(name)
    
    data = {
      "cmd" => "create_orgtype",
      "name" => name
    }
    
    send_data(data)
  rescue
    process_exception($!)
  end
  
  def delete_orgtype(org_type_id)
    
    data = {
      "cmd" => "delete_orgtype",
      "orgTypeId" => org_type_id
    }
    
    send_data(data)
  rescue
    process_exception($!)
  end
  
  def describe_orgtypes()
    data = {
      "cmd" => "describe_orgtypes"
    }
    
    send_data(data)
  rescue
    process_exception($!)
  end
  
  def join_org(org_id)
    
    data = {
      "cmd" => "join_org",
      "orgId" => org_id
    }
    
    send_data(data)
  rescue
    process_exception($!)
  end
  
  def follow_org(org_id)
    
    data = {
      "cmd" => "follow_org",
      "orgId" => org_id
    }
    
    send_data(data)
  rescue
    process_exception($!)
  end
  
  def exit_org(org_id)
    
    data = {
      "cmd" => "exit_org",
      "orgId" => org_id
    }
    
    send_data(data)
  rescue
    process_exception($!)
  end
  
  def unfollow_org(org_id)
    
    data = {
      "cmd" => "unfollow_org",
      "orgId" => org_id
    }
    
    send_data(data)
  rescue
    process_exception($!)
  end
  
  ###########################################################
  ## End of Org functions
  ###########################################################

end