class XmlDocument

def initialize(arg=false)
  @indent = arg
  @indentation = 0
end

def method_missing(methodName, *args, &block)
  xmlStr = String.new
  if @indent
    xmlStr << "  " * @indentation 
  end
  
  xmlStr << "<" << "#{methodName}"
  
  attr = args[0] || {}
  attr.each_pair do |k,v|
    xmlStr << " #{k}='#{v}'"
  end
  
  if block
    xmlStr << ">"
    
    if @indent     
      xmlStr << "\n" 
      @indentation += 1
    end
    
    xmlStr << yield
    
    if @indent
      @indentation -= 1
      xmlStr << "  " * @indentation
    end
    #puts "Block present ..... " + "#{methodName}"
    xmlStr << "</#{methodName}>"
    xmlStr << "\n" if @indent
  else
    xmlStr << "/>"
    xmlStr << "\n" if @indent
  end
  xmlStr
end

end