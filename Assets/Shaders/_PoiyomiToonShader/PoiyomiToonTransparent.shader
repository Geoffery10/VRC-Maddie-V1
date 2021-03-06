Shader "Custom/Avatar Shaders/Poiyomi's Shader/Toon/Transparent"
{
    Properties
    {
        [HideInInspector] m_mainOptions ("Float", Float) = 0
        [HideInInspector] m_metallicOptions ("Float", Float) = 0
        [HideInInspector] m_matcapOptions ("Float", Float) = 0
        [HideInInspector] m_outlineOptions ("Float", Float) = 0
        [HideInInspector] m_emissionOptions ("Float", Float) = 0
        [HideInInspector] m_fakeLightingOptions ("Float", Float) = 0
        [HideInInspector] m_specularHighlightsOptions ("Float", Float) = 0
        [HideInInspector] m_stencilOptions ("Float", Float) = 0
        [HideInInspector] m_rimLightOptions ("Float", Float) = 0
        [HideInInspector] m_miscOptions ("Float", Float) = 0
        
        _Color ("Color", Color) = (1, 1, 1, 1)
        _Desaturation ("Desaturation", Range(-1, 1)) = 0
        _MainTex ("Texture", 2D) = "white" { }
        [Normal]_NormalMap ("Normal Map", 2D) = "bump" { }
        _NormalIntensity ("Normal Intensity", Range(0, 10)) = 1
        
        _CubeMap ("Cube Reflection", Cube) = "" { }
        [Toggle(_)]_SampleWorld ("Force Baked Cubemap", Range(0, 1)) = 0
        _AdditiveClearCoat ("Additive Clear Coat", Range(0, 1)) = 0
        _PurelyAdditive ("Purely Additive", Range(0, 1)) = 0
        _MetallicMap ("Metallic Map", 2D) = "white" { }
        _Metallic ("Metallic", Range(0, 1)) = 0
        _RoughnessMap ("Roughness Map", 2D) = "white" { }
        _Roughness ("Roughness", Range(0, 1)) = 0
        
        _Matcap ("Matcap", 2D) = "white" { }
        _MatcapMap ("Matcap Map", 2D) = "white" { }
        _MatcapColor ("Matcap Color", Color) = (1, 1, 1, 1)
        _MatcapStrength ("Matcap Strength", Range(0, 20)) = 1
        _ReplaceWithMatcap ("Replace With Matcap", Range(0, 1)) = 0
        _MultiplyMatcap ("Multiply Matcap", Range(0, 1)) = 0
        _AddMatcap ("Add Matcap Additive", Range(0, 1)) = 0
        
        [Header(Emission)]
        [HDR]_EmissionColor ("Emission Color", Color) = (1, 1, 1, 1)
        _EmissionMap ("Emission Map", 2D) = "white" { }
        _EmissionScrollSpeed ("Emission Scroll Speed", Vector) = (0, 0, 0, 0)
        _EmissionStrength ("Emission Strength", Range(0, 20)) = 0
        
        [Header(Blinking Emission)]
        _EmissiveBlink_Min ("Emissive Blink Min", Float) = 1
        _EmissiveBlink_Max ("Emissive Blink Max", Float) = 1
        _EmissiveBlink_Velocity ("Emissive Blink Velocity", Float) = 4
        
        [Header(Scrolling Emission)]
        [Toggle(_)] _ScrollingEmission ("Enable Scrolling Emission", Float) = 0
        _EmissiveScroll_Direction ("Emissive Scroll Direction", Vector) = (0, -10, 0, 0)
        _EmissiveScroll_Width ("Emissive Scroll Width", Float) = 10
        _EmissiveScroll_Velocity ("Emissive Scroll Velocity", Float) = 10
        _EmissiveScroll_Interval ("Emissive Scroll Interval", Float) = 20
        
        [Header(Fake Lighting)]
        [NoScaleOffset]_Ramp ("Lighting Ramp", 2D) = "white" { }
        _ShadowStrength ("Shadow Strength", Range(0, 1)) = 1
        _ShadowOffset ("Shadow Offset", Range(-1, 1)) = 0
        [Toggle(_)] _ForceLightDirection ("Force Light Direction", Range(0, 1)) = 0
        [Toggle(_)] _ForceShadowStrength ("Force Shadow Strength", Range(0, 1)) = 0
        _LightDirection ("Fake Light Direction", Vector) = (0, 1, 0, 0)
        _MinBrightness ("Min Brightness", Range(0, 1)) = 0
        _MaxDirectionalIntensity ("Max Directional Intensity", Float) = 1
        [NoScaleOffset]_AdditiveRamp ("Additive Ramp", 2D) = "white" { }
        _FlatOrFullAmbientLighting ("Flat or Full Ambient Lighting", Range(0, 1)) = 0
        
        [Header(Specular Highlights)]
        _SpecularMap ("Specular Map", 2D) = "white" { }
        _Gloss ("Glossiness", Range(0, 1)) = 0
        _SpecularColor ("Specular Color", Color) = (1, 1, 1, 1)
        _SpecularBias ("Specular Color Bias", Range(0, 1)) = 0
        _SpecularStrength ("Specular Strength", Range(0, 5)) = 0
        [Toggle(_)]_HardSpecular ("Enable Hard Specular", Float) = 0
        _SpecularSize ("Hard Specular Size", Range(0, 1)) = .005
        
        [Header(Outlines)]
        _LineWidth ("Outline Width", Float) = 0
        _LineColor ("Outline Color", Color) = (1, 1, 1, 1)
        _OutlineEmission ("Outline Emission", Float) = 0
        _OutlineTexture ("Outline Texture", 2D) = "white" { }
        _Speed ("Speed", Float) = 0.05
        
        [Header(Rim Lighting)]
        _RimLightColor ("Rim Color", Color) = (1, 1, 1, 1)
        _RimWidth ("Rim Width", Range(0, 1)) = 0.8
        _RimStrength ("Rim Emission", Range(0, 20)) = 0
        _RimSharpness ("Rim Sharpness", Range(0, 1)) = .25
        _RimLightColorBias ("Rim Color Bias", Range(0, 1)) = 0
        _RimTex ("Rim Texture", 2D) = "white" { }
        _RimTexPanSpeed ("Rim Texture Pan Speed", Vector) = (0, 0, 0, 0)
        
        [IntRange] _StencilRef ("Stencil Reference Value", Range(0, 255)) = 0
        [Enum(UnityEngine.Rendering.StencilOp)] _StencilOp ("Stencil Op", Float) = 0
        [Enum(UnityEngine.Rendering.CompareFunction)] _StencilCompareFunction ("Stencil Compare Function", Float) = 0
        
        [Header(Misc)]
        [Enum(UnityEngine.Rendering.CullMode)] _Cull ("Cull", Float) = 2
        [Enum(UnityEngine.Rendering.CompareFunction)] _ZTest ("ZTest", Float) = 4
        [Enum(UnityEngine.Rendering.BlendMode)] _SourceBlend ("Source Blend", Float) = 5
        [Enum(UnityEngine.Rendering.BlendMode)] _DestinationBlend ("Destination Blend", Float) = 10
        _Clip ("Clipping", Range(0, 1.001)) = 0.5
    }
    
    CustomEditor "PoiToon"
    SubShader
    {
        Tags { "Queue" = "Transparent" "RenderType" = "Transparent" }
        //Blend SrcAlpha OneMinusSrcAlpha
        Blend [_SourceBlend] [_DestinationBlend]
        
        Stencil
        {
            Ref [_StencilRef]
            Comp [_StencilCompareFunction]
            Pass [_StencilOp]
        }
        Pass
        {
            Name "Outline"
            Tags { "LightMode" = "ForwardBase" }
            ZTest [_ZTest]
            Cull Front
            CGPROGRAM
            
            #include "UnityCG.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma only_renderers d3d9 d3d11 glcore gles
            #pragma target 3.0
            
            #include "Lighting.cginc"
            #include "AutoLight.cginc"
            
            #pragma vertex vert
            #pragma fragment frag
            
            uniform float _LineWidth;
            uniform float _OutlineEmission;
            uniform float4 _LineColor;
            uniform float4 _Color;
            uniform float _Clip;
            uniform sampler2D _OutlineTexture; uniform float4 _OutlineTexture_ST;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Speed;
            struct VertexInput
            {
                float4 vertex: POSITION;
                float3 normal: NORMAL;
                float2 texcoord0: TEXCOORD0;
            };
            struct VertexOutput
            {
                float4 pos: SV_POSITION;
                float2 uv: TEXCOORD0;
            };
            VertexOutput vert(VertexInput v)
            {
                VertexOutput o = (VertexOutput)0;
                o.uv = v.texcoord0;
                o.pos = UnityObjectToClipPos(float4(v.vertex.xyz + v.normal * _LineWidth / 10000, 1));
                return o;
            }
            float4 frag(VertexOutput i, float facing: VFACE): COLOR
            {
                clip(_LineWidth - 0.001);
                fixed4 col = tex2D(_OutlineTexture, TRANSFORM_TEX((i.uv + (_Speed * _Time.g)), _OutlineTexture)) * _LineColor;
                float attenuation = LIGHT_ATTENUATION(i) / SHADOW_ATTENUATION(i);
                float3 _flat_lighting_var = saturate(ShadeSH9(half4(float3(0, 1, 0), 1.0)) + (_LightColor0.rgb * attenuation));
                col.rgb *= _flat_lighting_var;
                col.rgb = col.rgb + (col.rgb * _OutlineEmission);
                return col;
            }
            ENDCG
            
        }
        
        Pass
        {
            Name "MainPass"
            Tags { "LightMode" = "ForwardBase" }
            Cull [_Cull]
            ZTest [_ZTest]
            CGPROGRAM
            
            #pragma target 3.0
            #pragma shader_feature _HARD_SPECULAR
            #pragma shader_feature _ScrollingEmission
            #pragma vertex vert
            #pragma fragment frag
            #define FORWARD_BASE_PASS
            #define TRANSPARENT
            #include "PoiPass.cginc"
            ENDCG
            
        }
        
        Pass
        {
            Tags { "LightMode" = "ForwardAdd" }
            ZWrite Off Blend One One
            Cull [_Cull]
            ZTest [_ZTest]
            CGPROGRAM
            
            #pragma target 3.0
            #pragma shader_feature _HARD_SPECULAR
            #pragma shader_feature _ScrollingEmission
            #pragma multi_compile DIRECTIONAL POINT SPOT
            #pragma vertex vert
            #pragma fragment frag
            #define TRANSPARENT
            #include "PoiPass.cginc"
            ENDCG
            
        }
        Pass
        {
            Tags { "LightMode" = "ShadowCaster" }
            CGPROGRAM
            
            #pragma target 3.0
            #pragma multi_compile_shadowcaster
            #pragma vertex MyShadowVertexProgram
            #pragma fragment MyShadowFragmentProgram
            #include "PoiShadows.cginc"
            ENDCG
            
        }
    }
}
