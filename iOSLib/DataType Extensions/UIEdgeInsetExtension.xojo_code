#tag Module
Protected Module UIEdgeInsetExtension
	#tag Method, Flags = &h0
		Function toUIEdgeInset(extends u as UIEdgeInsets32Bit) As UIEdgeInsets
		  dim result as UIEdgeInsets
		  result.Top = u.Top
		  result.left = u.left
		  result.Bottom = u.Bottom
		  result.Right = u.right
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toUIEdgeInset32(extends u as UIEdgeInsets) As UIEdgeInsets32Bit
		  dim result as UIEdgeInsets32Bit
		  result.Top = u.Top
		  result.left = u.left
		  result.Bottom = u.Bottom
		  result.Right = u.right
		  return result
		End Function
	#tag EndMethod


End Module
#tag EndModule
