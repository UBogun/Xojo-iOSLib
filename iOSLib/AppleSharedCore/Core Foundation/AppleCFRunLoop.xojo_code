#tag Class
Protected Class AppleCFRunLoop
Inherits AppleCFObject
	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFRunLoopGetCurrent Lib CoreFoundation () As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFRunLoopGetMain Lib CoreFoundation () As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CFRunLoopRun Lib CoreFoundation (RunLoopRef As Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CFRunLoopStop Lib CoreFoundation (RunLoopRef As Ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h1021
		Private Sub constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Run()
		  CFRunLoopRun mcftypeRef
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Stop()
		  CFRunLoopStop mcftypeRef
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return new AppleCFRunLoop (AppleCFRunLoop.CFRunLoopGetCurrent)
			End Get
		#tag EndGetter
		Shared CurrentLoop As AppleCFRunLoop
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return new AppleCFRunLoop (AppleCFRunLoop.CFRunLoopGetMain)
			End Get
		#tag EndGetter
		Shared MainLoop As AppleCFRunLoop
	#tag EndComputedProperty


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
