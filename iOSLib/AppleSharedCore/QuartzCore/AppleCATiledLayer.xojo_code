#tag Class
Protected Class AppleCATiledLayer
Inherits AppleCALayer
	#tag Method, Flags = &h1000
		Sub Constructor()
		  Super.Constructor (Init(Alloc(ClassPtr)))
		  mHasOwnership = true
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("CATiledLayer")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function fadeDuration lib QuartzCore selector "fadeDuration" (id as ptr) as double
			  Return fadeDuration (classptr)
			End Get
		#tag EndGetter
		Shared FadeDuration As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function levelsOfDetail lib QuartzCore selector "levelsOfDetail" (id as ptr) as uinteger
			  Return levelsOfDetail (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setLevelsOfDetail lib QuartzCore selector "setLevelsOfDetail:" (id as ptr, value as uinteger)
			  setLevelsOfDetail id, value
			End Set
		#tag EndSetter
		LevelsOfDetail As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function levelsOfDetailBias lib QuartzCore selector "levelsOfDetailBias" (id as ptr) as uinteger
			  Return levelsOfDetailBias (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setLevelsOfDetailBias lib QuartzCore selector "setLevelsOfDetailBias:" (id as ptr, value as uinteger)
			  setLevelsOfDetailBias id, value
			End Set
		#tag EndSetter
		LevelsOfDetailBias As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare Function tileSize lib QuartzCore selector "tileSize" (id as ptr) as nssize
			    Return tileSize (id)
			  #elseif Target32Bit
			    Declare Function tileSize lib QuartzCore selector "tileSize" (id as ptr) as NSSize32Bit
			    Return tileSize (id).tonssize
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare Sub setTileSize lib QuartzCore selector "setTileSize:" (id as ptr, value as nssize)
			    settileSize (id, value)
			  #elseif Target32Bit
			    Declare Sub setTileSize lib QuartzCore selector "setTileSize:" (id as ptr, value as NSSize32Bit)
			    settileSize (id, value.toNSSize32)
			  #endif
			End Set
		#tag EndSetter
		TileSize As NSSize
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
