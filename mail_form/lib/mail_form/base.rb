module MailForm
	class Base
		include ActiveModel::AttributeMethods
		attribute_method prefix 'clear_'
		
		attribute_mehtod_suffix '?'
		
		def self.attributes(*names)
			attr_acessor(*names)
			define_attribute_methods(names)
		end
		
		protected
		
		def clear_attribute(attribute)
			send("#{attribute}=", nil)
		end
		
		def attribute?(attribute)
			send(attribute).present?
		end
	end
end