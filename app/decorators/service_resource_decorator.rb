class ServiceResourceDecorator < Draper::Decorator
  delegate_all

  def fonticon
    resource_type.to_s == 'VmOrTemplate' ? 'pficon pficon-virtual-machine' : 'product product-template'
  end

  def listicon_image
    resource_type.to_s == 'VmOrTemplate' ? '100/vm.png' : '100/service_template.png'
  end
end
