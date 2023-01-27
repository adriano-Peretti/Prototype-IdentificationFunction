// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:1,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:True,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32890,y:32710,varname:node_2865,prsc:2|diff-9933-OUT,spec-2550-OUT,gloss-1813-OUT,normal-7375-OUT,emission-8780-OUT;n:type:ShaderForge.SFN_Multiply,id:6343,x:31070,y:32916,varname:node_6343,prsc:2|A-7736-RGB,B-6665-RGB;n:type:ShaderForge.SFN_Color,id:6665,x:30877,y:33009,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5019608,c2:0.5019608,c3:0.5019608,c4:1;n:type:ShaderForge.SFN_Tex2d,id:7736,x:30877,y:32824,ptovrint:True,ptlb:Base Color,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5964,x:31110,y:33847,ptovrint:True,ptlb:Normal Map,ptin:_BumpMap,varname:_BumpMap,prsc:2,glob:False,taghide:True,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Slider,id:358,x:30662,y:33276,ptovrint:False,ptlb:ST_Metallic,ptin:_ST_Metallic,varname:node_358,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:1813,x:32282,y:32833,ptovrint:False,ptlb:Roughness,ptin:_Roughness,varname:_Metallic_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.8,max:1;n:type:ShaderForge.SFN_If,id:1464,x:31318,y:32528,varname:node_1464,prsc:2|A-1416-OUT,B-1176-OUT,GT-1370-OUT,EQ-641-RGB,LT-6343-OUT;n:type:ShaderForge.SFN_Vector1,id:1176,x:30877,y:32435,varname:node_1176,prsc:2,v1:1;n:type:ShaderForge.SFN_Get,id:1416,x:30877,y:32380,varname:node_1416,prsc:2|IN-3924-OUT;n:type:ShaderForge.SFN_Set,id:3924,x:32845,y:32578,varname:State,prsc:2|IN-5823-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5823,x:32632,y:32578,ptovrint:False,ptlb:State,ptin:_State,varname:node_5823,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Color,id:641,x:30877,y:32651,ptovrint:False,ptlb:SelectedColor,ptin:_SelectedColor,varname:_Color_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:9659,x:30398,y:32893,ptovrint:False,ptlb:CorFase,ptin:_CorFase,varname:_SelectedColor_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_If,id:1370,x:30877,y:32493,varname:node_1370,prsc:2|A-7147-OUT,B-8550-OUT,GT-1363-RGB,EQ-7984-RGB,LT-9659-RGB;n:type:ShaderForge.SFN_Color,id:7984,x:30398,y:32715,ptovrint:False,ptlb:CorCircuito,ptin:_CorCircuito,varname:_FaseColor_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Vector1,id:8550,x:30397,y:32446,varname:node_8550,prsc:2,v1:3;n:type:ShaderForge.SFN_Get,id:7147,x:30397,y:32391,varname:node_7147,prsc:2|IN-3924-OUT;n:type:ShaderForge.SFN_Color,id:1363,x:30397,y:32540,ptovrint:False,ptlb:CorExtra,ptin:_CorExtra,varname:_CircuitoColor_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:4959,x:30835,y:33473,varname:node_4959,prsc:2|A-5608-RGB,B-3978-RGB;n:type:ShaderForge.SFN_Desaturate,id:6652,x:31007,y:33473,varname:node_6652,prsc:2|COL-4959-OUT;n:type:ShaderForge.SFN_Multiply,id:9683,x:31088,y:33314,varname:node_9683,prsc:2|A-358-OUT,B-6652-OUT;n:type:ShaderForge.SFN_Tex2d,id:5608,x:30662,y:33386,ptovrint:False,ptlb:Metallic,ptin:_Metallic,varname:node_5608,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:3978,x:30662,y:33582,ptovrint:False,ptlb:Metallic_Color,ptin:_Metallic_Color,varname:node_3978,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_SwitchProperty,id:1244,x:31327,y:33388,ptovrint:False,ptlb:Use_Metallic,ptin:_Use_Metallic,varname:node_1244,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-6538-OUT,B-9683-OUT;n:type:ShaderForge.SFN_Desaturate,id:6538,x:30911,y:33607,varname:node_6538,prsc:2|COL-3978-RGB;n:type:ShaderForge.SFN_Set,id:7324,x:31545,y:33388,varname:Metallic,prsc:2|IN-1244-OUT;n:type:ShaderForge.SFN_Get,id:2550,x:32418,y:32753,varname:node_2550,prsc:2|IN-7324-OUT;n:type:ShaderForge.SFN_Set,id:9110,x:31509,y:32528,varname:BaseColor,prsc:2|IN-1464-OUT;n:type:ShaderForge.SFN_Get,id:9933,x:32418,y:32689,varname:node_9933,prsc:2|IN-9110-OUT;n:type:ShaderForge.SFN_Tex2d,id:2769,x:31110,y:34039,ptovrint:False,ptlb:Normal_Map,ptin:_Normal_Map,varname:node_2769,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_SwitchProperty,id:7489,x:31329,y:33965,ptovrint:False,ptlb:Use_Normal,ptin:_Use_Normal,varname:node_7489,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-5964-RGB,B-2769-RGB;n:type:ShaderForge.SFN_Set,id:8889,x:31576,y:33968,varname:Normal,prsc:2|IN-7489-OUT;n:type:ShaderForge.SFN_Get,id:7375,x:32418,y:32913,varname:node_7375,prsc:2|IN-8889-OUT;n:type:ShaderForge.SFN_Set,id:5461,x:31566,y:34370,varname:Emission,prsc:2|IN-7853-OUT;n:type:ShaderForge.SFN_Vector1,id:875,x:31110,y:34280,varname:node_875,prsc:2,v1:0;n:type:ShaderForge.SFN_SwitchProperty,id:7853,x:31334,y:34370,ptovrint:False,ptlb:UseEmission,ptin:_UseEmission,varname:node_7853,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-875-OUT,B-4806-RGB;n:type:ShaderForge.SFN_Color,id:4806,x:31110,y:34413,ptovrint:False,ptlb:EmissionColor,ptin:_EmissionColor,varname:node_4806,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Get,id:8780,x:32418,y:32977,varname:node_8780,prsc:2|IN-5461-OUT;proporder:5823-7736-6665-1244-5608-3978-358-1813-7489-2769-5964-7853-4806-641-9659-7984-1363;pass:END;sub:END;*/

Shader "Shader Forge/Shader_IHM" {
    Properties {
        _State ("State", Float ) = 1
        _MainTex ("Base Color", 2D) = "white" {}
        _Color ("Color", Color) = (0.5019608,0.5019608,0.5019608,1)
        [MaterialToggle] _Use_Metallic ("Use_Metallic", Float ) = 0
        _Metallic ("Metallic", 2D) = "white" {}
        _Metallic_Color ("Metallic_Color", Color) = (0,0,0,1)
        _ST_Metallic ("ST_Metallic", Range(0, 1)) = 0
        _Roughness ("Roughness", Range(0, 1)) = 0.8
        [MaterialToggle] _Use_Normal ("Use_Normal", Float ) = 0
        _Normal_Map ("Normal_Map", 2D) = "bump" {}
        [HideInInspector]_BumpMap ("Normal Map", 2D) = "bump" {}
        [MaterialToggle] _UseEmission ("UseEmission", Float ) = 0
        [HDR]_EmissionColor ("EmissionColor", Color) = (0.5,0.5,0.5,1)
        _SelectedColor ("SelectedColor", Color) = (1,1,1,1)
        _CorFase ("CorFase", Color) = (1,1,1,1)
        _CorCircuito ("CorCircuito", Color) = (1,1,1,1)
        _CorExtra ("CorExtra", Color) = (1,1,1,1)
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma target 2.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform sampler2D _Metallic; uniform float4 _Metallic_ST;
            uniform sampler2D _Normal_Map; uniform float4 _Normal_Map_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _Color)
                UNITY_DEFINE_INSTANCED_PROP( float, _ST_Metallic)
                UNITY_DEFINE_INSTANCED_PROP( float, _Roughness)
                UNITY_DEFINE_INSTANCED_PROP( float, _State)
                UNITY_DEFINE_INSTANCED_PROP( float4, _SelectedColor)
                UNITY_DEFINE_INSTANCED_PROP( float4, _CorFase)
                UNITY_DEFINE_INSTANCED_PROP( float4, _CorCircuito)
                UNITY_DEFINE_INSTANCED_PROP( float4, _CorExtra)
                UNITY_DEFINE_INSTANCED_PROP( float4, _Metallic_Color)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _Use_Metallic)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _Use_Normal)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _UseEmission)
                UNITY_DEFINE_INSTANCED_PROP( float4, _EmissionColor)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD10;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
                float3 _Normal_Map_var = UnpackNormal(tex2D(_Normal_Map,TRANSFORM_TEX(i.uv0, _Normal_Map)));
                float3 _Use_Normal_var = lerp( _BumpMap_var.rgb, _Normal_Map_var.rgb, UNITY_ACCESS_INSTANCED_PROP( Props, _Use_Normal ) );
                float3 Normal = _Use_Normal_var;
                float3 normalLocal = Normal;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float _Roughness_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Roughness );
                float gloss = 1.0 - _Roughness_var; // Convert roughness to gloss
                float perceptualRoughness = _Roughness_var;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                #if UNITY_SPECCUBE_BLENDING || UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMin[0] = unity_SpecCube0_BoxMin;
                    d.boxMin[1] = unity_SpecCube1_BoxMin;
                #endif
                #if UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMax[0] = unity_SpecCube0_BoxMax;
                    d.boxMax[1] = unity_SpecCube1_BoxMax;
                    d.probePosition[0] = unity_SpecCube0_ProbePosition;
                    d.probePosition[1] = unity_SpecCube1_ProbePosition;
                #endif
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float4 _Metallic_Color_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Metallic_Color );
                float _ST_Metallic_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ST_Metallic );
                float4 _Metallic_var = tex2D(_Metallic,TRANSFORM_TEX(i.uv0, _Metallic));
                float _Use_Metallic_var = lerp( dot(_Metallic_Color_var.rgb,float3(0.3,0.59,0.11)), (_ST_Metallic_var*dot((_Metallic_var.rgb*_Metallic_Color_var.rgb),float3(0.3,0.59,0.11))), UNITY_ACCESS_INSTANCED_PROP( Props, _Use_Metallic ) );
                float Metallic = _Use_Metallic_var;
                float3 specularColor = Metallic;
                float specularMonochrome;
                float _State_var = UNITY_ACCESS_INSTANCED_PROP( Props, _State );
                float State = _State_var;
                float node_1464_if_leA = step(State,1.0);
                float node_1464_if_leB = step(1.0,State);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float4 _Color_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Color );
                float node_1370_if_leA = step(State,3.0);
                float node_1370_if_leB = step(3.0,State);
                float4 _CorFase_var = UNITY_ACCESS_INSTANCED_PROP( Props, _CorFase );
                float4 _CorExtra_var = UNITY_ACCESS_INSTANCED_PROP( Props, _CorExtra );
                float4 _CorCircuito_var = UNITY_ACCESS_INSTANCED_PROP( Props, _CorCircuito );
                float4 _SelectedColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SelectedColor );
                float3 BaseColor = lerp((node_1464_if_leA*(_MainTex_var.rgb*_Color_var.rgb))+(node_1464_if_leB*lerp((node_1370_if_leA*_CorFase_var.rgb)+(node_1370_if_leB*_CorExtra_var.rgb),_CorCircuito_var.rgb,node_1370_if_leA*node_1370_if_leB)),_SelectedColor_var.rgb,node_1464_if_leA*node_1464_if_leB);
                float3 diffuseColor = BaseColor; // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                half surfaceReduction;
                #ifdef UNITY_COLORSPACE_GAMMA
                    surfaceReduction = 1.0-0.28*roughness*perceptualRoughness;
                #else
                    surfaceReduction = 1.0/(roughness*roughness + 1.0);
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                indirectSpecular *= surfaceReduction;
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float4 _EmissionColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _EmissionColor );
                float3 _UseEmission_var = lerp( 0.0, _EmissionColor_var.rgb, UNITY_ACCESS_INSTANCED_PROP( Props, _UseEmission ) );
                float3 Emission = _UseEmission_var;
                float3 emissive = Emission;
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma target 2.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform sampler2D _Metallic; uniform float4 _Metallic_ST;
            uniform sampler2D _Normal_Map; uniform float4 _Normal_Map_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _Color)
                UNITY_DEFINE_INSTANCED_PROP( float, _ST_Metallic)
                UNITY_DEFINE_INSTANCED_PROP( float, _Roughness)
                UNITY_DEFINE_INSTANCED_PROP( float, _State)
                UNITY_DEFINE_INSTANCED_PROP( float4, _SelectedColor)
                UNITY_DEFINE_INSTANCED_PROP( float4, _CorFase)
                UNITY_DEFINE_INSTANCED_PROP( float4, _CorCircuito)
                UNITY_DEFINE_INSTANCED_PROP( float4, _CorExtra)
                UNITY_DEFINE_INSTANCED_PROP( float4, _Metallic_Color)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _Use_Metallic)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _Use_Normal)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _UseEmission)
                UNITY_DEFINE_INSTANCED_PROP( float4, _EmissionColor)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
                float3 _Normal_Map_var = UnpackNormal(tex2D(_Normal_Map,TRANSFORM_TEX(i.uv0, _Normal_Map)));
                float3 _Use_Normal_var = lerp( _BumpMap_var.rgb, _Normal_Map_var.rgb, UNITY_ACCESS_INSTANCED_PROP( Props, _Use_Normal ) );
                float3 Normal = _Use_Normal_var;
                float3 normalLocal = Normal;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float _Roughness_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Roughness );
                float gloss = 1.0 - _Roughness_var; // Convert roughness to gloss
                float perceptualRoughness = _Roughness_var;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float4 _Metallic_Color_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Metallic_Color );
                float _ST_Metallic_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ST_Metallic );
                float4 _Metallic_var = tex2D(_Metallic,TRANSFORM_TEX(i.uv0, _Metallic));
                float _Use_Metallic_var = lerp( dot(_Metallic_Color_var.rgb,float3(0.3,0.59,0.11)), (_ST_Metallic_var*dot((_Metallic_var.rgb*_Metallic_Color_var.rgb),float3(0.3,0.59,0.11))), UNITY_ACCESS_INSTANCED_PROP( Props, _Use_Metallic ) );
                float Metallic = _Use_Metallic_var;
                float3 specularColor = Metallic;
                float specularMonochrome;
                float _State_var = UNITY_ACCESS_INSTANCED_PROP( Props, _State );
                float State = _State_var;
                float node_1464_if_leA = step(State,1.0);
                float node_1464_if_leB = step(1.0,State);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float4 _Color_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Color );
                float node_1370_if_leA = step(State,3.0);
                float node_1370_if_leB = step(3.0,State);
                float4 _CorFase_var = UNITY_ACCESS_INSTANCED_PROP( Props, _CorFase );
                float4 _CorExtra_var = UNITY_ACCESS_INSTANCED_PROP( Props, _CorExtra );
                float4 _CorCircuito_var = UNITY_ACCESS_INSTANCED_PROP( Props, _CorCircuito );
                float4 _SelectedColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SelectedColor );
                float3 BaseColor = lerp((node_1464_if_leA*(_MainTex_var.rgb*_Color_var.rgb))+(node_1464_if_leB*lerp((node_1370_if_leA*_CorFase_var.rgb)+(node_1370_if_leB*_CorExtra_var.rgb),_CorCircuito_var.rgb,node_1370_if_leA*node_1370_if_leB)),_SelectedColor_var.rgb,node_1464_if_leA*node_1464_if_leB);
                float3 diffuseColor = BaseColor; // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma target 2.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _Metallic; uniform float4 _Metallic_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _Color)
                UNITY_DEFINE_INSTANCED_PROP( float, _ST_Metallic)
                UNITY_DEFINE_INSTANCED_PROP( float, _Roughness)
                UNITY_DEFINE_INSTANCED_PROP( float, _State)
                UNITY_DEFINE_INSTANCED_PROP( float4, _SelectedColor)
                UNITY_DEFINE_INSTANCED_PROP( float4, _CorFase)
                UNITY_DEFINE_INSTANCED_PROP( float4, _CorCircuito)
                UNITY_DEFINE_INSTANCED_PROP( float4, _CorExtra)
                UNITY_DEFINE_INSTANCED_PROP( float4, _Metallic_Color)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _Use_Metallic)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _UseEmission)
                UNITY_DEFINE_INSTANCED_PROP( float4, _EmissionColor)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                UNITY_SETUP_INSTANCE_ID( i );
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                float4 _EmissionColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _EmissionColor );
                float3 _UseEmission_var = lerp( 0.0, _EmissionColor_var.rgb, UNITY_ACCESS_INSTANCED_PROP( Props, _UseEmission ) );
                float3 Emission = _UseEmission_var;
                o.Emission = Emission;
                
                float _State_var = UNITY_ACCESS_INSTANCED_PROP( Props, _State );
                float State = _State_var;
                float node_1464_if_leA = step(State,1.0);
                float node_1464_if_leB = step(1.0,State);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float4 _Color_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Color );
                float node_1370_if_leA = step(State,3.0);
                float node_1370_if_leB = step(3.0,State);
                float4 _CorFase_var = UNITY_ACCESS_INSTANCED_PROP( Props, _CorFase );
                float4 _CorExtra_var = UNITY_ACCESS_INSTANCED_PROP( Props, _CorExtra );
                float4 _CorCircuito_var = UNITY_ACCESS_INSTANCED_PROP( Props, _CorCircuito );
                float4 _SelectedColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SelectedColor );
                float3 BaseColor = lerp((node_1464_if_leA*(_MainTex_var.rgb*_Color_var.rgb))+(node_1464_if_leB*lerp((node_1370_if_leA*_CorFase_var.rgb)+(node_1370_if_leB*_CorExtra_var.rgb),_CorCircuito_var.rgb,node_1370_if_leA*node_1370_if_leB)),_SelectedColor_var.rgb,node_1464_if_leA*node_1464_if_leB);
                float3 diffColor = BaseColor;
                float specularMonochrome;
                float3 specColor;
                float4 _Metallic_Color_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Metallic_Color );
                float _ST_Metallic_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ST_Metallic );
                float4 _Metallic_var = tex2D(_Metallic,TRANSFORM_TEX(i.uv0, _Metallic));
                float _Use_Metallic_var = lerp( dot(_Metallic_Color_var.rgb,float3(0.3,0.59,0.11)), (_ST_Metallic_var*dot((_Metallic_var.rgb*_Metallic_Color_var.rgb),float3(0.3,0.59,0.11))), UNITY_ACCESS_INSTANCED_PROP( Props, _Use_Metallic ) );
                float Metallic = _Use_Metallic_var;
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, Metallic, specColor, specularMonochrome );
                float _Roughness_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Roughness );
                float roughness = _Roughness_var;
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
