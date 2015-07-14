#tag Class
Protected Class AppleSlider
Inherits AppleControl
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub setvalue(value as single, animated as boolean)
		  Declare Sub setValue lib UIKit selector "setValue:animated:" (id as ptr, value as single, animated as boolean)
		  setValue id, value, animated
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function value lib UIKit selector "value" (id as ptr) as single
			  Return value (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setvalue value, True
			End Set
		#tag EndSetter
		AnimateValue As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("UISlider")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function continuous lib UIKit selector "isContinuous" (id as ptr) as boolean
			  Return continuous (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setContinuous lib UIKit selector "setContinuous:" (id as ptr, value as boolean)
			  setContinuous id, value
			End Set
		#tag EndSetter
		Continuous As boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function minimumTrackTintColor lib UIKit selector "minimumTrackTintColor" (id as ptr) as ptr
			  Return new AppleColor (minimumTrackTintColor (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setMinimumTrackTintColor lib UIKit selector "setMinimumTrackTintColor:" (id as ptr, value as ptr)
			  setMinimumTrackTintColor id, value.id
			End Set
		#tag EndSetter
		MaximumTrackTintColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function MaximumTrackTintColor lib UIKit selector "maximumTrackTintColor" (id as ptr) as ptr
			  Return new AppleColor (MaximumTrackTintColor (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setMaximumTrackTintColor lib UIKit selector "setMaximumTrackTintColor:" (id as ptr, value as ptr)
			  setMaximumTrackTintColor id, value.id
			End Set
		#tag EndSetter
		MinimumTrackTintColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare Function minimumValueImage lib UIKit selector "minimumValueImage" (id as ptr) as ptr
			  return AppleImage.MakeFromPtr (minimumValueImage (id))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setMinimumValueImage lib UIKit selector "setMinimumValueImage:" (id as ptr, value as ptr)
			  setMinimumValueImage id, value.id
			End Set
		#tag EndSetter
		MinimumValueImage As AppleImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target64bit
			    declare Function minimumValueImageRectForBounds lib UIKit selector "minimumValueImageRectForBounds:" (id as ptr, mybounds as nsrect) as nsrect
			    return minimumValueImageRectForBounds (id, me.Bounds)
			  #elseif Target32Bit
			    declare Function minimumValueImageRectForBounds lib UIKit selector "minimumValueImageRectForBounds:" (id as ptr, mybounds as NSRect32Bit) as NSRect32Bit
			    return minimumValueImageRectForBounds(id, me.Bounds.toNSRect32).toNSRect
			  #endif
			End Get
		#tag EndGetter
		MinimumValueImageRect As NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target64bit
			    declare Function thumbRectForBounds lib UIKit selector "thumbRectForBounds:trackRect:value:" _
			    (id as ptr, mybounds as nsrect, trackrect as nsrect, value as single) as nsrect
			    return thumbRectForBounds (id, me.Bounds, me.TrackRect, me.AnimateValue)
			  #elseif Target32Bit
			    declare Function thumbRectForBounds lib UIKit selector "thumbRectForBounds:trackRect:value:" _
			    (id as ptr, mybounds as NSRect32Bit, trackrect as NSRect32Bit, value as single) as NSRect32Bit
			    return thumbRectForBounds(id, me.Bounds.toNSRect32, me.TrackRect.toNSRect32, me.AnimateValue).toNSRect
			  #endif
			End Get
		#tag EndGetter
		ThumbRect As NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function thumbTintColor lib UIKit selector "thumbTintColor" (id as ptr) as ptr
			  Return new AppleColor (thumbTintColor (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setThumbTintColor lib UIKit selector "setThumbTintColor:" (id as ptr, value as ptr)
			  setThumbTintColor id, value.id
			End Set
		#tag EndSetter
		ThumbTintColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target64bit
			    declare Function trackRectForBounds lib UIKit selector "trackRectForBounds:" (id as ptr, mybounds as nsrect) as nsrect
			    return trackRectForBounds (id, me.Bounds)
			  #elseif Target32Bit
			    declare Function trackRectForBounds lib UIKit selector "trackRectForBounds:" (id as ptr, mybounds as NSRect32Bit) as NSRect32Bit
			    return trackRectForBounds(id, me.Bounds.toNSRect32).toNSRect
			  #endif
			End Get
		#tag EndGetter
		TrackRect As NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AnimateValue
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setvalue value, false
			End Set
		#tag EndSetter
		Value As Single
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AnimateValue"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Continuous"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Value"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
