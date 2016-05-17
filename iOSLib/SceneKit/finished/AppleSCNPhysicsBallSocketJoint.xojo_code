#tag Class
Protected Class AppleSCNPhysicsBallSocketJoint
Inherits AppleSCNPhysicsBehavior
	#tag Method, Flags = &h0, Description = 4372656174657320612062616C6C20616E6420736F636B6574206A6F696E7420636F6E6E656374696E672074776F207068797369637320626F646965732E
		Sub Constructor(Body As AppleSCNPhysicsBody, Anchor As SCNVector3)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  #if target64bit
		    Super.Constructor(jointWithBody(Classptr, body.id, Anchor))
		  #elseif Target32Bit
		    Super.Constructor(jointWithBody32(Classptr, body.id, Anchor.toVector3_32))
		  #endif
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320612062616C6C20616E6420736F636B6574206A6F696E7420636F6E6E656374696E672074776F207068797369637320626F646965732E
		Sub Constructor(BodyA As AppleSCNPhysicsBody, AnchorA As SCNVector3, BodyB As AppleSCNPhysicsBody, AnchorB As SCNVector3)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  #if target64bit
		    Super.Constructor(jointWithBodyA(Classptr, bodyA.id, AnchorA, bodyB.id, anchorB))
		  #elseif Target32Bit
		    Super.Constructor(jointWithBodyA32(Classptr, bodyA.id, AnchorA.toVector3_32, bodyB.id, anchorB.toVector3_32))
		  #endif
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function jointWithBody Lib SceneKitLib Selector "jointWithBody:anchor:" (id as ptr, body as ptr, anchor as scnvector3) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function jointWithBody32 Lib SceneKitLib Selector "jointWithBody:anchor:" (id as ptr, body as ptr, anchor as SCNVector3_32Bit) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function jointWithBodyA Lib SceneKitLib Selector "jointWithBodyA:anchorA:bodyB:anchorB:" (id as ptr, bodyA as ptr, anchorA as scnvector3, bodyB as Ptr, anchorB as SCNVector3) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function jointWithBodyA32 Lib SceneKitLib Selector "jointWithBodyA:anchorA:bodyB:anchorB:" (id as ptr, bodyA as ptr, anchorA as scnvector3_32Bit, bodyB as Ptr, anchorB as SCNVector3_32Bit) As ptr
	#tag EndExternalMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    return getAnchora(id)
			  #elseif Target32Bit
			    return getAnchorA32(id).toVector3
			  #endif
			End Get
		#tag EndGetter
		AnchorA As SCNVector3
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("SCNPhysicsBallSocketJoint")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Description"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hash"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsNIL"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mHasOwnership"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
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
