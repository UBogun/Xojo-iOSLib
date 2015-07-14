#tag Class
Protected Class AppleCAScrollLayer
Inherits AppleCALayer
	#tag Method, Flags = &h1000
		Sub Constructor()
		  Super.Constructor (Init(Alloc(ClassPtr)))
		  mHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ScrollToPoint(aPoint as NSPoint)
		  #if Target64Bit
		    Declare sub scrollToPoint lib QuartzCore selector "scrollToPoint:" (id as ptr, value as NSPoint)
		    scrollToPoint id, aPoint
		  #elseif Target32Bit
		    Declare sub scrollToPoint lib QuartzCore selector "scrollToPoint:" (id as ptr, value as NSPoint32Bit)
		    scrollToPoint id, aPoint.toNSPoint32
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ScrollToRect(aRect as NSRect)
		  #if Target64Bit
		    Declare sub scrollToRect lib QuartzCore selector "scrollToRect:" (id as ptr, value as NSRect)
		    scrollToRect id, aRect
		  #elseif Target32Bit
		    Declare sub scrollToRect lib QuartzCore selector "scrollToRect:" (id as ptr, value as NSRect32Bit)
		    scrollToRect id, aRect.toNSRect32
		  #endif
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("CAScrollLayer")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static mresult as text = SystemConstantName ("kCAScrollBoth", QuartzCorePath)
			  return mresult
			End Get
		#tag EndGetter
		Private Shared kCAScrollBoth As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static mresult as text = SystemConstantName ("kCAScrollHorizontally", QuartzCorePath)
			  return mresult
			End Get
		#tag EndGetter
		Private Shared kCAScrollHorizontally As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static mresult as text = SystemConstantName ("kCAScrollNone", QuartzCorePath)
			  return mresult
			End Get
		#tag EndGetter
		Private Shared kCAScrollNone As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static mresult as text = SystemConstantName ("kCAScrollVertically", QuartzCorePath)
			  return mresult
			End Get
		#tag EndGetter
		Private Shared kCAScrollVertically As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function scrollMode lib QuartzCore selector "scrollMode" (id as ptr) as CFStringRef
			  select case scrollMode (id)
			  case kCAScrollNone
			    Return scrollModes.None
			  case kCAScrollHorizontally
			    Return scrollModes.Horizontal
			  case kCAScrollVertically
			    Return scrollModes.Vertical
			  case kCAScrollBoth
			    Return scrollModes.Both
			  end select
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setScrollMode lib QuartzCore selector "setScrollMode:" (id as ptr, value as CFStringRef)
			  dim mode as text
			  select case value
			  case scrollModes.None
			    mode = kCAScrollNone
			  case scrollModes.Horizontal
			    mode =  kCAScrollHorizontally
			  case scrollModes.Vertical
			    mode = kCAScrollVertically
			  case scrollModes.Both
			    mode = kCAScrollBoth
			  end select
			  setScrollMode id, mode
			End Set
		#tag EndSetter
		ScrollMode As ScrollModes
	#tag EndComputedProperty


	#tag Enum, Name = ScrollModes, Type = Integer, Flags = &h0
		None
		  Vertical
		  Horizontal
		Both
	#tag EndEnum


	#tag ViewBehavior
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
			Name="ScrollMode"
			Group="Behavior"
			Type="ScrollModes"
			EditorType="Enum"
			#tag EnumValues
				"0 - None"
				"1 - Vertical"
				"2 - Horizontal"
				"3 - Both"
			#tag EndEnumValues
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
	#tag EndViewBehavior
End Class
#tag EndClass
