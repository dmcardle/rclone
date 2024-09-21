load("@bazel_gazelle//:deps.bzl", "go_repository")

def go_dependencies():
    go_repository(
        name = "co_honnef_go_tools",
        importpath = "honnef.co/go/tools",
        sum = "h1:UoveltGrhghAA7ePc+e+QYDHXrBps2PqFZiHkGR/xK8=",
        version = "v0.0.1-2020.1.4",
    )
    go_repository(
        name = "com_github_a8m_tree",
        importpath = "github.com/a8m/tree",
        sum = "h1:KMVieI1/Ub++GYfnhyFPoGE3g5TUiG4srE3TMGr5nM4=",
        version = "v0.0.0-20240104212747-2c8764a5f17e",
    )
    go_repository(
        name = "com_github_aalpar_deheap",
        importpath = "github.com/aalpar/deheap",
        sum = "h1:hhdWprfSpFbN7lz3W1gM40vOgvSh1WCSMxYD6gGB4Hs=",
        version = "v0.0.0-20210914013432-0cc84d79dec3",
    )
    go_repository(
        name = "com_github_abbot_go_http_auth",
        importpath = "github.com/abbot/go-http-auth",
        sum = "h1:QjmvZ5gSC7jm3Zg54DqWE/T5m1t2AfDu6QlXJT0EVT0=",
        version = "v0.4.0",
    )
    go_repository(
        name = "com_github_akavel_rsrc",
        importpath = "github.com/akavel/rsrc",
        sum = "h1:Zxm8V5eI1hW4gGaYsJQUhxpjkENuG91ki8B4zCrvEsw=",
        version = "v0.10.2",
    )
    go_repository(
        name = "com_github_alecthomas_kingpin_v2",
        importpath = "github.com/alecthomas/kingpin/v2",
        sum = "h1:f48lwail6p8zpO1bC4TxtqACaGqHYA22qkHjHpqDjYY=",
        version = "v2.4.0",
    )
    go_repository(
        name = "com_github_alecthomas_units",
        importpath = "github.com/alecthomas/units",
        sum = "h1:s6gZFSlWYmbqAuRjVTiNNhvNRfY2Wxp9nhfyel4rklc=",
        version = "v0.0.0-20211218093645-b94a6e3cc137",
    )
    go_repository(
        name = "com_github_anacrolix_dms",
        importpath = "github.com/anacrolix/dms",
        sum = "h1:XVOpT3eoO5Ds34B1X+TE3R2ApfqGGeqotEoCVNP8BaI=",
        version = "v1.7.1",
    )
    go_repository(
        name = "com_github_anacrolix_ffprobe",
        importpath = "github.com/anacrolix/ffprobe",
        sum = "h1:eKBudnERW9zRJ0+ge6FzkQ0pWLyq142+FJrwRwSRMT4=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_anacrolix_generics",
        importpath = "github.com/anacrolix/generics",
        sum = "h1:4WVhK6iLb3UAAAQP6I3uYlMOHcp9FqJC9j4n81Wv9Ks=",
        version = "v0.0.1",
    )
    go_repository(
        name = "com_github_anacrolix_log",
        importpath = "github.com/anacrolix/log",
        sum = "h1:LTSf5Wm6Q4GNWPFMBP7NPYV6UBVZzZLKckL+/Lj72Oo=",
        version = "v0.15.2",
    )
    go_repository(
        name = "com_github_andybalholm_cascadia",
        importpath = "github.com/andybalholm/cascadia",
        sum = "h1:3Xi6Dw5lHF15JtdcmAHD3i1+T8plmv7BQ/nsViSLyss=",
        version = "v1.3.2",
    )
    go_repository(
        name = "com_github_apache_arrow_go_v14",
        importpath = "github.com/apache/arrow/go/v14",
        sum = "h1:N8OkaJEOfI3mEZt07BIkvo4sC6XDbL+48MBPWO5IONw=",
        version = "v14.0.2",
    )
    go_repository(
        name = "com_github_apache_thrift",
        importpath = "github.com/apache/thrift",
        sum = "h1:cMd2aj52n+8VoAtvSvLn4kDC3aZ6IAkBuqWQ2IDu7wo=",
        version = "v0.17.0",
    )
    go_repository(
        name = "com_github_appscode_go_querystring",
        importpath = "github.com/appscode/go-querystring",
        sum = "h1:LoL75er+LKDHDUfU5tRvFwxH0LjPpZN8OoG8Ll+liGU=",
        version = "v0.0.0-20170504095604-0126cfb3f1dc",
    )
    go_repository(
        name = "com_github_atotto_clipboard",
        importpath = "github.com/atotto/clipboard",
        sum = "h1:EH0zSVneZPSuFR11BlR9YppQTVDbh5+16AmcJi4g1z4=",
        version = "v0.1.4",
    )
    go_repository(
        name = "com_github_aws_aws_sdk_go_v2",
        importpath = "github.com/aws/aws-sdk-go-v2",
        sum = "h1:jUeBtG0Ih+ZIFH0F4UkmL9w3cSpaMv9tYYDbzILP8dY=",
        version = "v1.30.3",
    )
    go_repository(
        name = "com_github_aws_aws_sdk_go_v2_aws_protocol_eventstream",
        importpath = "github.com/aws/aws-sdk-go-v2/aws/protocol/eventstream",
        sum = "h1:tW1/Rkad38LA15X4UQtjXZXNKsCgkshC3EbmcUmghTg=",
        version = "v1.6.3",
    )
    go_repository(
        name = "com_github_aws_aws_sdk_go_v2_config",
        importpath = "github.com/aws/aws-sdk-go-v2/config",
        sum = "h1:HdqgGt1OAP0HkEDDShEl0oSYa9ZZBSOmKpdpsDMdO90=",
        version = "v1.27.27",
    )
    go_repository(
        name = "com_github_aws_aws_sdk_go_v2_credentials",
        importpath = "github.com/aws/aws-sdk-go-v2/credentials",
        sum = "h1:2raNba6gr2IfA0eqqiP2XiQ0UVOpGPgDSi0I9iAP+UI=",
        version = "v1.17.27",
    )
    go_repository(
        name = "com_github_aws_aws_sdk_go_v2_feature_ec2_imds",
        importpath = "github.com/aws/aws-sdk-go-v2/feature/ec2/imds",
        sum = "h1:KreluoV8FZDEtI6Co2xuNk/UqI9iwMrOx/87PBNIKqw=",
        version = "v1.16.11",
    )
    go_repository(
        name = "com_github_aws_aws_sdk_go_v2_feature_s3_manager",
        importpath = "github.com/aws/aws-sdk-go-v2/feature/s3/manager",
        sum = "h1:zeN9UtUlA6FTx0vFSayxSX32HDw73Yb6Hh2izDSFxXY=",
        version = "v1.17.10",
    )
    go_repository(
        name = "com_github_aws_aws_sdk_go_v2_internal_configsources",
        importpath = "github.com/aws/aws-sdk-go-v2/internal/configsources",
        sum = "h1:SoNJ4RlFEQEbtDcCEt+QG56MY4fm4W8rYirAmq+/DdU=",
        version = "v1.3.15",
    )
    go_repository(
        name = "com_github_aws_aws_sdk_go_v2_internal_endpoints_v2",
        importpath = "github.com/aws/aws-sdk-go-v2/internal/endpoints/v2",
        sum = "h1:C6WHdGnTDIYETAm5iErQUiVNsclNx9qbJVPIt03B6bI=",
        version = "v2.6.15",
    )
    go_repository(
        name = "com_github_aws_aws_sdk_go_v2_internal_ini",
        importpath = "github.com/aws/aws-sdk-go-v2/internal/ini",
        sum = "h1:hT8rVHwugYE2lEfdFE0QWVo81lF7jMrYJVDWI+f+VxU=",
        version = "v1.8.0",
    )
    go_repository(
        name = "com_github_aws_aws_sdk_go_v2_internal_v4a",
        importpath = "github.com/aws/aws-sdk-go-v2/internal/v4a",
        sum = "h1:Z5r7SycxmSllHYmaAZPpmN8GviDrSGhMS6bldqtXZPw=",
        version = "v1.3.15",
    )
    go_repository(
        name = "com_github_aws_aws_sdk_go_v2_service_internal_accept_encoding",
        importpath = "github.com/aws/aws-sdk-go-v2/service/internal/accept-encoding",
        sum = "h1:dT3MqvGhSoaIhRseqw2I0yH81l7wiR2vjs57O51EAm8=",
        version = "v1.11.3",
    )
    go_repository(
        name = "com_github_aws_aws_sdk_go_v2_service_internal_checksum",
        importpath = "github.com/aws/aws-sdk-go-v2/service/internal/checksum",
        sum = "h1:YPYe6ZmvUfDDDELqEKtAd6bo8zxhkm+XEFEzQisqUIE=",
        version = "v1.3.17",
    )
    go_repository(
        name = "com_github_aws_aws_sdk_go_v2_service_internal_presigned_url",
        importpath = "github.com/aws/aws-sdk-go-v2/service/internal/presigned-url",
        sum = "h1:HGErhhrxZlQ044RiM+WdoZxp0p+EGM62y3L6pwA4olE=",
        version = "v1.11.17",
    )
    go_repository(
        name = "com_github_aws_aws_sdk_go_v2_service_internal_s3shared",
        importpath = "github.com/aws/aws-sdk-go-v2/service/internal/s3shared",
        sum = "h1:246A4lSTXWJw/rmlQI+TT2OcqeDMKBdyjEQrafMaQdA=",
        version = "v1.17.15",
    )
    go_repository(
        name = "com_github_aws_aws_sdk_go_v2_service_s3",
        importpath = "github.com/aws/aws-sdk-go-v2/service/s3",
        sum = "h1:hT8ZAZRIfqBqHbzKTII+CIiY8G2oC9OpLedkZ51DWl8=",
        version = "v1.58.3",
    )
    go_repository(
        name = "com_github_aws_aws_sdk_go_v2_service_sso",
        importpath = "github.com/aws/aws-sdk-go-v2/service/sso",
        sum = "h1:BXx0ZIxvrJdSgSvKTZ+yRBeSqqgPM89VPlulEcl37tM=",
        version = "v1.22.4",
    )
    go_repository(
        name = "com_github_aws_aws_sdk_go_v2_service_ssooidc",
        importpath = "github.com/aws/aws-sdk-go-v2/service/ssooidc",
        sum = "h1:yiwVzJW2ZxZTurVbYWA7QOrAaCYQR72t0wrSBfoesUE=",
        version = "v1.26.4",
    )
    go_repository(
        name = "com_github_aws_aws_sdk_go_v2_service_sts",
        importpath = "github.com/aws/aws-sdk-go-v2/service/sts",
        sum = "h1:ZsDKRLXGWHk8WdtyYMoGNO7bTudrvuKpDKgMVRlepGE=",
        version = "v1.30.3",
    )
    go_repository(
        name = "com_github_aws_smithy_go",
        importpath = "github.com/aws/smithy-go",
        sum = "h1:ryHwveWzPV5BIof6fyDvor6V3iUL7nTfiTKXHiW05nE=",
        version = "v1.20.3",
    )
    go_repository(
        name = "com_github_aymanbagabas_go_osc52_v2",
        importpath = "github.com/aymanbagabas/go-osc52/v2",
        sum = "h1:HwpRHbFMcZLEVr42D4p7XBqjyuxQH5SMiErDT4WkJ2k=",
        version = "v2.0.1",
    )
    go_repository(
        name = "com_github_azure_azure_sdk_for_go_sdk_azcore",
        importpath = "github.com/Azure/azure-sdk-for-go/sdk/azcore",
        sum = "h1:GJHeeA2N7xrG3q30L2UXDyuWRzDM900/65j70wcM4Ww=",
        version = "v1.13.0",
    )
    go_repository(
        name = "com_github_azure_azure_sdk_for_go_sdk_azidentity",
        importpath = "github.com/Azure/azure-sdk-for-go/sdk/azidentity",
        sum = "h1:tfLQ34V6F7tVSwoTf/4lH5sE0o6eCJuNDTmH09nDpbc=",
        version = "v1.7.0",
    )
    go_repository(
        name = "com_github_azure_azure_sdk_for_go_sdk_internal",
        importpath = "github.com/Azure/azure-sdk-for-go/sdk/internal",
        sum = "h1:ywEEhmNahHBihViHepv3xPBn1663uRv2t2q/ESv9seY=",
        version = "v1.10.0",
    )
    go_repository(
        name = "com_github_azure_azure_sdk_for_go_sdk_resourcemanager_storage_armstorage",
        importpath = "github.com/Azure/azure-sdk-for-go/sdk/resourcemanager/storage/armstorage",
        sum = "h1:AifHbc4mg0x9zW52WOpKbsHaDKuRhlI7TVl47thgQ70=",
        version = "v1.5.0",
    )
    go_repository(
        name = "com_github_azure_azure_sdk_for_go_sdk_storage_azblob",
        importpath = "github.com/Azure/azure-sdk-for-go/sdk/storage/azblob",
        sum = "h1:YUUxeiOWgdAQE3pXt2H7QXzZs0q8UBjgRbl56qo8GYM=",
        version = "v1.3.2",
    )
    go_repository(
        name = "com_github_azure_azure_sdk_for_go_sdk_storage_azfile",
        importpath = "github.com/Azure/azure-sdk-for-go/sdk/storage/azfile",
        sum = "h1:PmDhkIT8S5U4nkY/s78Xmf7CXT8qCliNEBhbrkBp3Q0=",
        version = "v1.2.2",
    )
    go_repository(
        name = "com_github_azure_go_ntlmssp",
        importpath = "github.com/Azure/go-ntlmssp",
        sum = "h1:mFRzDkZVAjdal+s7s0MwaRv9igoPqLRdzOLzw/8Xvq8=",
        version = "v0.0.0-20221128193559-754e69321358",
    )
    go_repository(
        name = "com_github_azuread_microsoft_authentication_library_for_go",
        importpath = "github.com/AzureAD/microsoft-authentication-library-for-go",
        sum = "h1:XHOnouVk1mxXfQidrMEnLlPk9UMeRtyBTnEFtxkV0kU=",
        version = "v1.2.2",
    )
    go_repository(
        name = "com_github_beorn7_perks",
        importpath = "github.com/beorn7/perks",
        sum = "h1:VlbKKnNfV8bJzeqoa4cOKqO6bYr3WgKZxO8Z16+hsOM=",
        version = "v1.0.1",
    )
    go_repository(
        name = "com_github_blang_semver_v4",
        importpath = "github.com/blang/semver/v4",
        sum = "h1:1PFHFE6yCCTv8C1TeyNNarDzntLi7wMI5i/pzqYIsAM=",
        version = "v4.0.0",
    )
    go_repository(
        name = "com_github_bmkessler_fastdiv",
        importpath = "github.com/bmkessler/fastdiv",
        sum = "h1:8Rz0TcIbkvU+x53bDQgezQ3tbjrQSpZRr6h9JnR9lZU=",
        version = "v0.0.0-20190227075523-41d5178f2044",
    )
    go_repository(
        name = "com_github_bradenaw_juniper",
        importpath = "github.com/bradenaw/juniper",
        sum = "h1:0JdjBGEF2jP1pOxmlNIrPhAoQN7Ng5IMAY5D0PHMW4U=",
        version = "v0.15.2",
    )
    go_repository(
        name = "com_github_bradfitz_iter",
        importpath = "github.com/bradfitz/iter",
        sum = "h1:GKTyiRCL6zVf5wWaqKnf+7Qs6GbEPfd4iMOitWzXJx8=",
        version = "v0.0.0-20191230175014-e8f45d346db8",
    )
    go_repository(
        name = "com_github_buengese_sgzip",
        importpath = "github.com/buengese/sgzip",
        sum = "h1:ry+T8l1mlmiWEsDrH/YHZnCVWD2S3im1KLsyO+8ZmTU=",
        version = "v0.1.1",
    )
    go_repository(
        name = "com_github_burntsushi_toml",
        importpath = "github.com/BurntSushi/toml",
        sum = "h1:WXkYYl6Yr3qBf1K79EBnL4mak0OimBfB0XUf9Vl28OQ=",
        version = "v0.3.1",
    )
    go_repository(
        name = "com_github_burntsushi_xgb",
        importpath = "github.com/BurntSushi/xgb",
        sum = "h1:1BDTz0u9nC3//pOCMdNH+CiXJVYJh5UQNCOBG7jbELc=",
        version = "v0.0.0-20160522181843-27f122750802",
    )
    go_repository(
        name = "com_github_bwesterb_go_ristretto",
        importpath = "github.com/bwesterb/go-ristretto",
        sum = "h1:1w53tCkGhCQ5djbat3+MH0BAQ5Kfgbt56UZQ/JMzngw=",
        version = "v1.2.3",
    )
    go_repository(
        name = "com_github_bytedance_sonic",
        importpath = "github.com/bytedance/sonic",
        sum = "h1:oUp34TzMlL+OY1OUWxHqsdkgC/Zfc85zGqw9siXjrc0=",
        version = "v1.11.6",
    )
    go_repository(
        name = "com_github_bytedance_sonic_loader",
        importpath = "github.com/bytedance/sonic/loader",
        sum = "h1:c+e5Pt1k/cy5wMveRDyk2X4B9hF4g7an8N3zCYjJFNM=",
        version = "v0.1.1",
    )
    go_repository(
        name = "com_github_calebcase_tmpfile",
        importpath = "github.com/calebcase/tmpfile",
        sum = "h1:BZrOWZ79gJqQ3XbAQlihYZf/YCV0H4KPIdM5K5oMpJo=",
        version = "v1.0.3",
    )
    go_repository(
        name = "com_github_census_instrumentation_opencensus_proto",
        importpath = "github.com/census-instrumentation/opencensus-proto",
        sum = "h1:iKLQ0xPNFxR/2hzXZMrBo8f1j86j5WHzznCCQxV/b8g=",
        version = "v0.4.1",
    )
    go_repository(
        name = "com_github_cespare_xxhash_v2",
        importpath = "github.com/cespare/xxhash/v2",
        sum = "h1:DC2CZ1Ep5Y4k3ZQ899DldepgrayRUGE6BBZ/cd9Cj44=",
        version = "v2.2.0",
    )
    go_repository(
        name = "com_github_charmbracelet_bubbles",
        importpath = "github.com/charmbracelet/bubbles",
        sum = "h1:zP/ROH3wJEBqZWKIsD50ZKKlx3ydLInq3LdD/Nrlb8w=",
        version = "v0.13.0",
    )
    go_repository(
        name = "com_github_charmbracelet_bubbletea",
        importpath = "github.com/charmbracelet/bubbletea",
        sum = "h1:bAfwk7jRz7FKFl9RzlIULPkStffg5k6pNt5dywy4TcM=",
        version = "v0.25.0",
    )
    go_repository(
        name = "com_github_charmbracelet_lipgloss",
        importpath = "github.com/charmbracelet/lipgloss",
        sum = "h1:KWeXFSexGcfahHX+54URiZGkBFazf70JNMtwg/AFW3s=",
        version = "v0.10.0",
    )
    go_repository(
        name = "com_github_chenzhuoyu_base64x",
        importpath = "github.com/chenzhuoyu/base64x",
        sum = "h1:qSGYFH7+jGhDF8vLC+iwCD4WpbV1EBDSzWkJODFLams=",
        version = "v0.0.0-20221115062448-fe3a3abad311",
    )
    go_repository(
        name = "com_github_chilts_sid",
        importpath = "github.com/chilts/sid",
        sum = "h1:z0uK8UQqjMVYzvk4tiiu3obv2B44+XBsvgEJREQfnO8=",
        version = "v0.0.0-20190607042430-660e94789ec9",
    )
    go_repository(
        name = "com_github_chzyer_logex",
        importpath = "github.com/chzyer/logex",
        sum = "h1:Swpa1K6QvQznwJRcfTfQJmTE72DqScAa40E+fbHEXEE=",
        version = "v1.1.10",
    )
    go_repository(
        name = "com_github_chzyer_readline",
        importpath = "github.com/chzyer/readline",
        sum = "h1:fY5BOSpyZCqRo5OhCuC+XN+r/bBCmeuuJtjz+bCNIf8=",
        version = "v0.0.0-20180603132655-2972be24d48e",
    )
    go_repository(
        name = "com_github_chzyer_test",
        importpath = "github.com/chzyer/test",
        sum = "h1:q763qf9huN11kDQavWsoZXJNW3xEE4JJyHa5Q25/sd8=",
        version = "v0.0.0-20180213035817-a1ea475d72b1",
    )
    go_repository(
        name = "com_github_client9_misspell",
        importpath = "github.com/client9/misspell",
        sum = "h1:ta993UF76GwbvJcIo3Y68y/M3WxlpEHPWIGDkJYwzJI=",
        version = "v0.3.4",
    )
    go_repository(
        name = "com_github_cloudflare_circl",
        importpath = "github.com/cloudflare/circl",
        sum = "h1:qlCDlTPz2n9fu58M0Nh1J/JzcFpfgkFHHX3O35r5vcU=",
        version = "v1.3.7",
    )
    go_repository(
        name = "com_github_cloudsoda_go_smb2",
        importpath = "github.com/cloudsoda/go-smb2",
        sum = "h1:nPP4suUiNage0vvyEBgfAnhTPwwXhNqtHmSuiCIQwKU=",
        version = "v0.0.0-20231124195312-f3ec8ae2c891",
    )
    go_repository(
        name = "com_github_cloudwego_base64x",
        importpath = "github.com/cloudwego/base64x",
        sum = "h1:jwCgWpFanWmN8xoIUHa2rtzmkd5J2plF/dnLS6Xd/0Y=",
        version = "v0.1.4",
    )
    go_repository(
        name = "com_github_cloudwego_iasm",
        importpath = "github.com/cloudwego/iasm",
        sum = "h1:1KNIy1I1H9hNNFEEH3DVnI4UujN+1zjpuk6gwHLTssg=",
        version = "v0.2.0",
    )
    go_repository(
        name = "com_github_cncf_udpa_go",
        importpath = "github.com/cncf/udpa/go",
        sum = "h1:WBZRG4aNOuI15bLRrCgN8fCq8E5Xuty6jGbmSNEvSsU=",
        version = "v0.0.0-20191209042840-269d4d468f6f",
    )
    go_repository(
        name = "com_github_cncf_xds_go",
        importpath = "github.com/cncf/xds/go",
        sum = "h1:DBmgJDC9dTfkVyGgipamEh2BpGYxScCH1TOF1LL1cXc=",
        version = "v0.0.0-20240318125728-8a4994d93e50",
    )
    go_repository(
        name = "com_github_colinmarc_hdfs_v2",
        importpath = "github.com/colinmarc/hdfs/v2",
        sum = "h1:v6R8oBx/Wu9fHpdPoJJjpGSUxo8NhHIwrwsfhFvU9W0=",
        version = "v2.4.0",
    )
    go_repository(
        name = "com_github_containerd_console",
        importpath = "github.com/containerd/console",
        sum = "h1:q2hJAaP1k2wIvVRd/hEHD7lacgqrCPS+k8g1MndzfWY=",
        version = "v1.0.4-0.20230313162750-1ae8d489ac81",
    )
    go_repository(
        name = "com_github_coreos_go_semver",
        importpath = "github.com/coreos/go-semver",
        sum = "h1:yi21YpKnrx1gt5R+la8n5WgS0kCrsPp33dmEyHReZr4=",
        version = "v0.3.1",
    )
    go_repository(
        name = "com_github_coreos_go_systemd_v22",
        importpath = "github.com/coreos/go-systemd/v22",
        sum = "h1:RrqgGjYQKalulkV8NGVIfkXQf6YYmOyiJKk8iXXhfZs=",
        version = "v22.5.0",
    )
    go_repository(
        name = "com_github_cpuguy83_go_md2man_v2",
        importpath = "github.com/cpuguy83/go-md2man/v2",
        sum = "h1:wfIWP927BUkWJb2NmU/kNDYIBTh/ziUX91+lVfRxZq4=",
        version = "v2.0.4",
    )
    go_repository(
        name = "com_github_cronokirby_saferith",
        importpath = "github.com/cronokirby/saferith",
        sum = "h1:TgoQlfsD4LIwx71+ChfRcIpjkw+RPOapDEVxa+LhwLo=",
        version = "v0.33.0",
    )
    go_repository(
        name = "com_github_cyphar_filepath_securejoin",
        importpath = "github.com/cyphar/filepath-securejoin",
        sum = "h1:Ugdm7cg7i6ZK6x3xDF1oEu1nfkyfH53EtKeQYTC3kyg=",
        version = "v0.2.4",
    )
    go_repository(
        name = "com_github_davecgh_go_spew",
        importpath = "github.com/davecgh/go-spew",
        sum = "h1:U9qPSI2PIWSS1VwoXQT9A3Wy9MM3WgvqSxFWenqJduM=",
        version = "v1.1.2-0.20180830191138-d8f796af33cc",
    )
    go_repository(
        name = "com_github_dnaeon_go_vcr",
        importpath = "github.com/dnaeon/go-vcr",
        sum = "h1:zHCHvJYTMh1N7xnV7zf1m1GPBF9Ad0Jk/whtQ1663qI=",
        version = "v1.2.0",
    )
    go_repository(
        name = "com_github_dop251_scsu",
        importpath = "github.com/dop251/scsu",
        sum = "h1:xJBhC00smQpSZw3Kr0ErMUBXhUSjYoLRm2szxdbRBL0=",
        version = "v0.0.0-20220106150536-84ac88021d00",
    )
    go_repository(
        name = "com_github_dropbox_dropbox_sdk_go_unofficial_v6",
        importpath = "github.com/dropbox/dropbox-sdk-go-unofficial/v6",
        sum = "h1:FT+t0UEDykcor4y3dMVKXIiWJETBpRgERYTGlmMd7HU=",
        version = "v6.0.5",
    )
    go_repository(
        name = "com_github_dsnet_try",
        importpath = "github.com/dsnet/try",
        sum = "h1:ptR59SsrcFUYbT/FhAbKTV6iLkeD6O18qfIWRml2fqI=",
        version = "v0.0.3",
    )
    go_repository(
        name = "com_github_dustin_go_humanize",
        importpath = "github.com/dustin/go-humanize",
        sum = "h1:GzkhY7T5VNhEkwH0PVJgjz+fX1rhBrR7pRT3mDkpeCY=",
        version = "v1.0.1",
    )
    go_repository(
        name = "com_github_dvyukov_go_fuzz",
        importpath = "github.com/dvyukov/go-fuzz",
        sum = "h1:sE4tvxWw01v7K3MAHwKF2UF3xQbgy23PRURntuV1CkU=",
        version = "v0.0.0-20220726122315-1d375ef9f9f6",
    )
    go_repository(
        name = "com_github_elazarl_go_bindata_assetfs",
        importpath = "github.com/elazarl/go-bindata-assetfs",
        sum = "h1:G/bYguwHIzWq9ZoyUQqrjTmJbbYn3j3CKKpKinvZLFk=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_elek_bubbles",
        importpath = "github.com/elek/bubbles",
        sum = "h1:SNuN7zt41iv9/FfKEF1Aj8pihCClbafDrK/gQCDuiDc=",
        version = "v0.0.0-20230923192006-860c0efc50ae",
    )
    go_repository(
        name = "com_github_emersion_go_imap",
        importpath = "github.com/emersion/go-imap",
        sum = "h1:+s9ZjMEjOB8NzZMVTM3cCenz2JrQIGGo5j1df19WjTA=",
        version = "v1.2.1",
    )
    go_repository(
        name = "com_github_emersion_go_imap_uidplus",
        importpath = "github.com/emersion/go-imap-uidplus",
        sum = "h1:2Kbw3iu7fFeSso6RWIArVNUj1VGG2PvjetnPUW7bnis=",
        version = "v0.0.0-20200503180755-e75854c361e9",
    )
    go_repository(
        name = "com_github_emersion_go_message",
        importpath = "github.com/emersion/go-message",
        sum = "h1:7LxAXHRpSeoO/Wom3ZApVZYG7c3d17yCScYce8WiXA8=",
        version = "v0.18.0",
    )
    go_repository(
        name = "com_github_emersion_go_sasl",
        importpath = "github.com/emersion/go-sasl",
        sum = "h1:fI1Jck0vUrXT8bnphprS1EoVRe2Q5CKCX8iDlpqjQ/Y=",
        version = "v0.0.0-20220912192320-0145f2c60ead",
    )
    go_repository(
        name = "com_github_emersion_go_textwrapper",
        importpath = "github.com/emersion/go-textwrapper",
        sum = "h1:IbFBtwoTQyw0fIM5xv1HF+Y+3ZijDR839WMulgxCcUY=",
        version = "v0.0.0-20200911093747-65d896831594",
    )
    go_repository(
        name = "com_github_emersion_go_vcard",
        importpath = "github.com/emersion/go-vcard",
        sum = "h1:ATgqloALX6cHCranzkLb8/zjivwQ9DWWDCQRnxTPfaA=",
        version = "v0.0.0-20230815062825-8fda7d206ec9",
    )
    go_repository(
        name = "com_github_envoyproxy_go_control_plane",
        importpath = "github.com/envoyproxy/go-control-plane",
        sum = "h1:4X+VP1GHd1Mhj6IB5mMeGbLCleqxjletLK6K0rbxyZI=",
        version = "v0.12.0",
    )
    go_repository(
        name = "com_github_envoyproxy_protoc_gen_validate",
        importpath = "github.com/envoyproxy/protoc-gen-validate",
        sum = "h1:gVPz/FMfvh57HdSJQyvBtF00j8JU4zdyUgIUNhlgg0A=",
        version = "v1.0.4",
    )
    go_repository(
        name = "com_github_fatih_color",
        importpath = "github.com/fatih/color",
        sum = "h1:zmkK9Ngbjj+K0yRhTVONQh1p/HknKYSlNT+vZCzyokM=",
        version = "v1.16.0",
    )
    go_repository(
        name = "com_github_felixge_fgprof",
        importpath = "github.com/felixge/fgprof",
        sum = "h1:VvyZxILNuCiUCSXtPtYmmtGvb65nqXh2QFWc0Wpf2/g=",
        version = "v0.9.3",
    )
    go_repository(
        name = "com_github_felixge_httpsnoop",
        importpath = "github.com/felixge/httpsnoop",
        sum = "h1:NFTV2Zj1bL4mc9sqWACXbQFVBBg2W3GPvqp8/ESS2Wg=",
        version = "v1.0.4",
    )
    go_repository(
        name = "com_github_files_com_files_sdk_go_v3",
        importpath = "github.com/Files-com/files-sdk-go/v3",
        sum = "h1:j6gSzu6BF1wWH1z4itRe7eKhQSCrx/I78SDNiBBUtvI=",
        version = "v3.2.34",
    )
    go_repository(
        name = "com_github_flynn_noise",
        importpath = "github.com/flynn/noise",
        sum = "h1:vPp/jdQLXC6ppsXSj/pM3W1BIJ5FEHE2TulSJBpb43Y=",
        version = "v1.0.1",
    )
    go_repository(
        name = "com_github_frankban_quicktest",
        importpath = "github.com/frankban/quicktest",
        sum = "h1:g2rn0vABPOOXmZUj+vbmUp0lPoXEMuhTpIluN0XL9UY=",
        version = "v1.14.4",
    )
    go_repository(
        name = "com_github_fsnotify_fsnotify",
        importpath = "github.com/fsnotify/fsnotify",
        sum = "h1:8JEhPFa5W2WU7YfeZzPNqzMP6Lwt7L2715Ggo0nosvA=",
        version = "v1.7.0",
    )
    go_repository(
        name = "com_github_gabriel_vasile_mimetype",
        importpath = "github.com/gabriel-vasile/mimetype",
        sum = "h1:QjV6pZ7/XZ7ryI2KuyeEDE8wnh7fHP9YnQy+R0LnH8I=",
        version = "v1.4.4",
    )
    go_repository(
        name = "com_github_gdamore_encoding",
        importpath = "github.com/gdamore/encoding",
        sum = "h1:+7OoQ1Bc6eTm5niUzBa0Ctsh6JbMW6Ra+YNuAtDBdko=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_gdamore_tcell_v2",
        importpath = "github.com/gdamore/tcell/v2",
        sum = "h1:sg6/UnTM9jGpZU+oFYAsDahfchWAFW8Xx2yFinNSAYU=",
        version = "v2.7.4",
    )
    go_repository(
        name = "com_github_geoffgarside_ber",
        importpath = "github.com/geoffgarside/ber",
        sum = "h1:qTmFG4jJbwiSzSXoNJeHcOprVzZ8Ulde2Rrrifu5U9w=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_gin_contrib_sse",
        importpath = "github.com/gin-contrib/sse",
        sum = "h1:Y/yl/+YNO8GZSjAhjMsSuLt29uWRFHdHYUb5lYOV9qE=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_gin_gonic_gin",
        importpath = "github.com/gin-gonic/gin",
        sum = "h1:nTuyha1TYqgedzytsKYqna+DfLos46nTv2ygFy86HFU=",
        version = "v1.10.0",
    )
    go_repository(
        name = "com_github_go_chi_chi_v5",
        importpath = "github.com/go-chi/chi/v5",
        sum = "h1:acVI1TYaD+hhedDJ3r54HyA6sExp3HfXq7QWEEY/xMw=",
        version = "v5.1.0",
    )
    go_repository(
        name = "com_github_go_darwin_apfs",
        importpath = "github.com/go-darwin/apfs",
        sum = "h1:JnrjqG5iR07/8k7NqrLNilRsl3s1EPRQEGvbPyOce68=",
        version = "v0.0.0-20211011131704-f84b94dbf348",
    )
    go_repository(
        name = "com_github_go_git_go_billy_v5",
        importpath = "github.com/go-git/go-billy/v5",
        sum = "h1:yEY4yhzCDuMGSv83oGxiBotRzhwhNr8VZyphhiu+mTU=",
        version = "v5.5.0",
    )
    go_repository(
        name = "com_github_go_gl_glfw",
        importpath = "github.com/go-gl/glfw",
        sum = "h1:QbL/5oDUmRBzO9/Z7Seo6zf912W/a6Sr4Eu0G/3Jho0=",
        version = "v0.0.0-20190409004039-e6da0acd62b1",
    )
    go_repository(
        name = "com_github_go_gl_glfw_v3_3_glfw",
        importpath = "github.com/go-gl/glfw/v3.3/glfw",
        sum = "h1:WtGNWLvXpe6ZudgnXrq0barxBImvnnJoMEhXAzcbM0I=",
        version = "v0.0.0-20200222043503-6f7a984d4dc4",
    )
    go_repository(
        name = "com_github_go_ini_ini",
        importpath = "github.com/go-ini/ini",
        sum = "h1:z6ZrTEZqSWOTyH2FlglNbNgARyHG8oLW9gMELqKr06A=",
        version = "v1.67.0",
    )
    go_repository(
        name = "com_github_go_kit_log",
        importpath = "github.com/go-kit/log",
        sum = "h1:MRVx0/zhvdseW+Gza6N9rVzU/IVzaeE1SFI4raAhmBU=",
        version = "v0.2.1",
    )
    go_repository(
        name = "com_github_go_logfmt_logfmt",
        importpath = "github.com/go-logfmt/logfmt",
        sum = "h1:otpy5pqBCBZ1ng9RQ0dPu4PN7ba75Y/aA+UpowDyNVA=",
        version = "v0.5.1",
    )
    go_repository(
        name = "com_github_go_logr_logr",
        importpath = "github.com/go-logr/logr",
        sum = "h1:pKouT5E8xu9zeFC39JXRDukb6JFQPXM5p5I91188VAQ=",
        version = "v1.4.1",
    )
    go_repository(
        name = "com_github_go_logr_stdr",
        importpath = "github.com/go-logr/stdr",
        sum = "h1:hSWxHoqTgW2S2qGc0LTAI563KZ5YKYRhT3MFKZMbjag=",
        version = "v1.2.2",
    )
    go_repository(
        name = "com_github_go_ole_go_ole",
        importpath = "github.com/go-ole/go-ole",
        sum = "h1:Dt6ye7+vXGIKZ7Xtk4s6/xVdGDQynvom7xCFEdWr6uE=",
        version = "v1.3.0",
    )
    go_repository(
        name = "com_github_go_playground_locales",
        importpath = "github.com/go-playground/locales",
        sum = "h1:EWaQ/wswjilfKLTECiXz7Rh+3BjFhfDFKv/oXslEjJA=",
        version = "v0.14.1",
    )
    go_repository(
        name = "com_github_go_playground_universal_translator",
        importpath = "github.com/go-playground/universal-translator",
        sum = "h1:Bcnm0ZwsGyWbCzImXv+pAJnYK9S473LQFuzCbDbfSFY=",
        version = "v0.18.1",
    )
    go_repository(
        name = "com_github_go_playground_validator_v10",
        importpath = "github.com/go-playground/validator/v10",
        sum = "h1:K9ISHbSaI0lyB2eWMPJo+kOS/FBExVwjEviJTixqxL8=",
        version = "v10.20.0",
    )
    go_repository(
        name = "com_github_go_resty_resty_v2",
        importpath = "github.com/go-resty/resty/v2",
        sum = "h1:i7jMfNOJYMp69lq7qozJP+bjgzfAzeOhuGlyDrqxT/8=",
        version = "v2.11.0",
    )
    go_repository(
        name = "com_github_go_task_slim_sprig",
        importpath = "github.com/go-task/slim-sprig",
        sum = "h1:tfuBGBXKqDEevZMzYi5KSi8KkcZtzBcTgAUUtapy0OI=",
        version = "v0.0.0-20230315185526-52ccab3ef572",
    )
    go_repository(
        name = "com_github_go_task_slim_sprig_v3",
        importpath = "github.com/go-task/slim-sprig/v3",
        sum = "h1:sUs3vkvUymDpBKi3qH1YSqBQk9+9D/8M2mN1vB6EwHI=",
        version = "v3.0.0",
    )
    go_repository(
        name = "com_github_goccy_go_json",
        importpath = "github.com/goccy/go-json",
        sum = "h1:KZ5WoDbxAIgm2HNbYckL0se1fHD6rz5j4ywS6ebzDqA=",
        version = "v0.10.3",
    )
    go_repository(
        name = "com_github_godbus_dbus_v5",
        importpath = "github.com/godbus/dbus/v5",
        sum = "h1:9349emZab16e7zQvpmsbtjc18ykshndd8y2PG3sgJbA=",
        version = "v5.0.4",
    )
    go_repository(
        name = "com_github_gofrs_flock",
        importpath = "github.com/gofrs/flock",
        sum = "h1:+gYjHKf32LDeiEEFhQaotPbLuUXjY5ZqxKgXy7n59aw=",
        version = "v0.8.1",
    )
    go_repository(
        name = "com_github_gogo_protobuf",
        importpath = "github.com/gogo/protobuf",
        sum = "h1:Ov1cvc58UF3b5XjBnZv7+opcTcQFZebYjWzi34vdm4Q=",
        version = "v1.3.2",
    )
    go_repository(
        name = "com_github_golang_glog",
        importpath = "github.com/golang/glog",
        sum = "h1:uCdmnmatrKCgMBlM4rMuJZWOkPDqdbZPnrMXDY4gI68=",
        version = "v1.2.0",
    )
    go_repository(
        name = "com_github_golang_groupcache",
        importpath = "github.com/golang/groupcache",
        sum = "h1:oI5xCqsCo564l8iNU+DwB5epxmsaqB+rhGL0m5jtYqE=",
        version = "v0.0.0-20210331224755-41bb18bfe9da",
    )
    go_repository(
        name = "com_github_golang_jwt_jwt_v4",
        importpath = "github.com/golang-jwt/jwt/v4",
        sum = "h1:7cYmW1XlMY7h7ii7UhUyChSgS5wUJEnm9uZVTGqOWzg=",
        version = "v4.5.0",
    )
    go_repository(
        name = "com_github_golang_jwt_jwt_v5",
        importpath = "github.com/golang-jwt/jwt/v5",
        sum = "h1:OuVbFODueb089Lh128TAcimifWaLhJwVflnrgM17wHk=",
        version = "v5.2.1",
    )
    go_repository(
        name = "com_github_golang_mock",
        importpath = "github.com/golang/mock",
        sum = "h1:ErTB+efbowRARo13NNdxyJji2egdxLGQhRaY+DUumQc=",
        version = "v1.6.0",
    )
    go_repository(
        name = "com_github_golang_protobuf",
        importpath = "github.com/golang/protobuf",
        sum = "h1:i7eJL8qZTpSEXOPTxNKhASYpMn+8e5Q6AdndVa1dWek=",
        version = "v1.5.4",
    )
    go_repository(
        name = "com_github_google_btree",
        importpath = "github.com/google/btree",
        sum = "h1:0udJVsspx3VBr5FwtLhQQtuAsVc79tTq0ocGIPAU6qo=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_google_flatbuffers",
        importpath = "github.com/google/flatbuffers",
        sum = "h1:M9dgRyhJemaM4Sw8+66GHBu8ioaQmyPLg1b8VwK5WJg=",
        version = "v23.5.26+incompatible",
    )
    go_repository(
        name = "com_github_google_go_cmp",
        importpath = "github.com/google/go-cmp",
        sum = "h1:ofyhxvXcZhMsU5ulbFiLKl/XBFqE1GSq7atu8tAmTRI=",
        version = "v0.6.0",
    )
    go_repository(
        name = "com_github_google_go_pkcs11",
        importpath = "github.com/google/go-pkcs11",
        sum = "h1:OF1IPgv+F4NmqmJ98KTjdN97Vs1JxDPB3vbmYzV2dpk=",
        version = "v0.2.1-0.20230907215043-c6f79328ddf9",
    )
    go_repository(
        name = "com_github_google_gopacket",
        importpath = "github.com/google/gopacket",
        sum = "h1:ves8RnFZPGiFnTS0uPQStjwru6uO6h+nlr9j6fL7kF8=",
        version = "v1.1.19",
    )
    go_repository(
        name = "com_github_google_martian",
        importpath = "github.com/google/martian",
        sum = "h1:/CP5g8u/VJHijgedC/Legn3BAbAaWPgecwXBIDzw5no=",
        version = "v2.1.0+incompatible",
    )
    go_repository(
        name = "com_github_google_martian_v3",
        importpath = "github.com/google/martian/v3",
        sum = "h1:pMen7vLs8nvgEYhywH3KDWJIJTeEr2ULsVWHWYHQyBs=",
        version = "v3.0.0",
    )
    go_repository(
        name = "com_github_google_pprof",
        importpath = "github.com/google/pprof",
        sum = "h1:velgFPYr1X9TDwLIfkV7fWqsFlf7TeP11M/7kPd/dVI=",
        version = "v0.0.0-20240509144519-723abb6459b7",
    )
    go_repository(
        name = "com_github_google_renameio",
        importpath = "github.com/google/renameio",
        sum = "h1:GOZbcHa3HfsPKPlmyPyN2KEohoMXOhdMbHrvbpl2QaA=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_google_s2a_go",
        importpath = "github.com/google/s2a-go",
        sum = "h1:60BLSyTrOV4/haCDW4zb1guZItoSq8foHCXrAnjBo/o=",
        version = "v0.1.7",
    )
    go_repository(
        name = "com_github_google_uuid",
        importpath = "github.com/google/uuid",
        sum = "h1:NIvaJDMOsjHA8n1jAhLSgzrAzy1Hgr+hNrb57e+94F0=",
        version = "v1.6.0",
    )
    go_repository(
        name = "com_github_googleapis_enterprise_certificate_proxy",
        importpath = "github.com/googleapis/enterprise-certificate-proxy",
        sum = "h1:Vie5ybvEvT75RniqhfFxPRy3Bf7vr3h0cechB90XaQs=",
        version = "v0.3.2",
    )
    go_repository(
        name = "com_github_googleapis_gax_go_v2",
        importpath = "github.com/googleapis/gax-go/v2",
        sum = "h1:8gw9KZK8TiVKB6q3zHY3SBzLnrGp6HQjyfYBYGmXdxA=",
        version = "v2.12.5",
    )
    go_repository(
        name = "com_github_gopherjs_gopherjs",
        importpath = "github.com/gopherjs/gopherjs",
        sum = "h1:JKmoR8x90Iww1ks85zJ1lfDGgIiMDuIptTOhJq+zKyg=",
        version = "v0.0.0-20181103185306-d547d1d9531e",
    )
    go_repository(
        name = "com_github_gorilla_securecookie",
        importpath = "github.com/gorilla/securecookie",
        sum = "h1:miw7JPhV+b/lAHSXz4qd/nN9jRiAFV5FwjeKyCS8BvQ=",
        version = "v1.1.1",
    )
    go_repository(
        name = "com_github_gorilla_sessions",
        importpath = "github.com/gorilla/sessions",
        sum = "h1:DHd3rPN5lE3Ts3D8rKkQ8x/0kqfeNmBAaiSi+o7FsgI=",
        version = "v1.2.1",
    )
    go_repository(
        name = "com_github_hanwen_go_fuse_v2",
        importpath = "github.com/hanwen/go-fuse/v2",
        sum = "h1:OQBE8zVemSocRxA4OaFJbjJ5hlpCmIWbGr7r0M4uoQQ=",
        version = "v2.5.1",
    )
    go_repository(
        name = "com_github_hashicorp_errwrap",
        importpath = "github.com/hashicorp/errwrap",
        sum = "h1:OxrOeh75EUXMY8TBjag2fzXGZ40LB6IKw45YeGUDY2I=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_hashicorp_go_cleanhttp",
        importpath = "github.com/hashicorp/go-cleanhttp",
        sum = "h1:035FKYIWjmULyFRBKPs8TBQoi0x6d9G4xc9neXJWAZQ=",
        version = "v0.5.2",
    )
    go_repository(
        name = "com_github_hashicorp_go_hclog",
        importpath = "github.com/hashicorp/go-hclog",
        sum = "h1:Qr2kF+eVWjTiYmU7Y31tYlP1h0q/X3Nl3tPGdaB11/k=",
        version = "v1.6.3",
    )
    go_repository(
        name = "com_github_hashicorp_go_multierror",
        importpath = "github.com/hashicorp/go-multierror",
        sum = "h1:H5DkEtf6CXdFp0N0Em5UCwQpXMWke8IA0+lD48awMYo=",
        version = "v1.1.1",
    )
    go_repository(
        name = "com_github_hashicorp_go_retryablehttp",
        importpath = "github.com/hashicorp/go-retryablehttp",
        sum = "h1:C8hUCYzor8PIfXHa4UrZkU4VvK8o9ISHxT2Q8+VepXU=",
        version = "v0.7.7",
    )
    go_repository(
        name = "com_github_hashicorp_go_uuid",
        importpath = "github.com/hashicorp/go-uuid",
        sum = "h1:2gKiV6YVmrJ1i2CKKa9obLvRieoRGviZFL26PcT/Co8=",
        version = "v1.0.3",
    )
    go_repository(
        name = "com_github_hashicorp_golang_lru",
        importpath = "github.com/hashicorp/golang-lru",
        sum = "h1:0hERBMJE1eitiLkihrMvRVBYAkpHzc/J3QdDN+dAcgU=",
        version = "v0.5.1",
    )
    go_repository(
        name = "com_github_hashicorp_golang_lru_v2",
        importpath = "github.com/hashicorp/golang-lru/v2",
        sum = "h1:a+bsQ5rvGLjzHuww6tVxozPZFVghXaHOwFs4luLUK2k=",
        version = "v2.0.7",
    )
    go_repository(
        name = "com_github_hashicorp_hcl",
        importpath = "github.com/hashicorp/hcl",
        sum = "h1:0Anlzjpi4vEasTeNFn2mLJgTSwt0+6sfsiTG8qcWGx4=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_henrybear327_go_proton_api",
        importpath = "github.com/henrybear327/go-proton-api",
        sum = "h1:zYi/IbjLwFAW7ltCeqXneUGJey0TN//Xo851a/BgLXw=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_henrybear327_proton_api_bridge",
        importpath = "github.com/henrybear327/Proton-API-Bridge",
        sum = "h1:gjKAaWfKu++77WsZTHg6FUyPC5W0LTKWQciUm8PMZb0=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_hpcloud_tail",
        importpath = "github.com/hpcloud/tail",
        sum = "h1:nfCOvKYfkgYP8hkirhJocXT2+zOD8yUNjXaWfTlyFKI=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_ianlancetaylor_demangle",
        importpath = "github.com/ianlancetaylor/demangle",
        sum = "h1:UDMh68UUwekSh5iP2OMhRRZJiiBccgV7axzUG8vi56c=",
        version = "v0.0.0-20181102032728-5e5cf60278f6",
    )
    go_repository(
        name = "com_github_inconshreveable_mousetrap",
        importpath = "github.com/inconshreveable/mousetrap",
        sum = "h1:wN+x4NVGpMsO7ErUn/mUI3vEoE6Jt13X2s0bqwp9tc8=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_jcmturner_aescts_v2",
        importpath = "github.com/jcmturner/aescts/v2",
        sum = "h1:9YKLH6ey7H4eDBXW8khjYslgyqG2xZikXP0EQFKrle8=",
        version = "v2.0.0",
    )
    go_repository(
        name = "com_github_jcmturner_dnsutils_v2",
        importpath = "github.com/jcmturner/dnsutils/v2",
        sum = "h1:lltnkeZGL0wILNvrNiVCR6Ro5PGU/SeBvVO/8c/iPbo=",
        version = "v2.0.0",
    )
    go_repository(
        name = "com_github_jcmturner_gofork",
        importpath = "github.com/jcmturner/gofork",
        sum = "h1:QH0l3hzAU1tfT3rZCnW5zXl+orbkNMMRGJfdJjHVETg=",
        version = "v1.7.6",
    )
    go_repository(
        name = "com_github_jcmturner_goidentity_v6",
        importpath = "github.com/jcmturner/goidentity/v6",
        sum = "h1:VKnZd2oEIMorCTsFBnJWbExfNN7yZr3EhJAxwOkZg6o=",
        version = "v6.0.1",
    )
    go_repository(
        name = "com_github_jcmturner_gokrb5_v8",
        importpath = "github.com/jcmturner/gokrb5/v8",
        sum = "h1:x1Sv4HaTpepFkXbt2IkL29DXRf8sOfZXo8eRKh687T8=",
        version = "v8.4.4",
    )
    go_repository(
        name = "com_github_jcmturner_rpc_v2",
        importpath = "github.com/jcmturner/rpc/v2",
        sum = "h1:7FXXj8Ti1IaVFpSAziCZWNzbNuZmnvw/i6CqLNdWfZY=",
        version = "v2.0.3",
    )
    go_repository(
        name = "com_github_jlaffaye_ftp",
        importpath = "github.com/jlaffaye/ftp",
        sum = "h1:lXNvW7cBu7R/68bknOX3MrRIIqZ61zELs1P2RAiA3lg=",
        version = "v0.2.0",
    )
    go_repository(
        name = "com_github_jmespath_go_jmespath",
        importpath = "github.com/jmespath/go-jmespath",
        sum = "h1:BEgLn5cpjn8UN1mAw4NjwDrS35OdebyEtFe+9YPoQUg=",
        version = "v0.4.0",
    )
    go_repository(
        name = "com_github_josephspurrier_goversioninfo",
        importpath = "github.com/josephspurrier/goversioninfo",
        sum = "h1:Puhl12NSHUSALHSuzYwPYQkqa2E1+7SrtAPJorKK0C8=",
        version = "v1.4.0",
    )
    go_repository(
        name = "com_github_jpillora_backoff",
        importpath = "github.com/jpillora/backoff",
        sum = "h1:uvFg412JmmHBHw7iwprIxkPMI+sGQ4kzOWsMeHnm2EA=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_json_iterator_go",
        importpath = "github.com/json-iterator/go",
        sum = "h1:PV8peI4a0ysnczrg+LtxykD8LfKY9ML6u2jnxaEnrnM=",
        version = "v1.1.12",
    )
    go_repository(
        name = "com_github_jstemmer_go_junit_report",
        importpath = "github.com/jstemmer/go-junit-report",
        sum = "h1:6QPYqodiu3GuPL+7mfx+NwDdp2eTkp9IfEUpgAwUN0o=",
        version = "v0.9.1",
    )
    go_repository(
        name = "com_github_jtolds_gls",
        importpath = "github.com/jtolds/gls",
        sum = "h1:xdiiI2gbIgH/gLH7ADydsJ1uDOEzR8yvV7C0MuV77Wo=",
        version = "v4.20.0+incompatible",
    )
    go_repository(
        name = "com_github_jtolds_tracetagger_v2",
        importpath = "github.com/jtolds/tracetagger/v2",
        sum = "h1:SriMFVtftPsQmG+0xaABotz9HnoKoo1QM/oggqfpGh8=",
        version = "v2.0.0-rc5",
    )
    go_repository(
        name = "com_github_jtolio_crawlspace",
        importpath = "github.com/jtolio/crawlspace",
        sum = "h1:RSt5K+VT7bPr6A9DW/8Kav6V6aYB+8Vqn6ygqp6S0UM=",
        version = "v0.0.0-20231116162947-3ec5cc6b36c5",
    )
    go_repository(
        name = "com_github_jtolio_crawlspace_tools",
        importpath = "github.com/jtolio/crawlspace/tools",
        sum = "h1:0hJbX3XrlNQXHOSsN0NebO6GpFNDFUJlMCr/j+RF7tY=",
        version = "v0.0.0-20231116162947-3ec5cc6b36c5",
    )
    go_repository(
        name = "com_github_jtolio_noiseconn",
        importpath = "github.com/jtolio/noiseconn",
        sum = "h1:JcltaO1HXM5S2KYOYcKgAV7slU0xPy1OcvrVgn98sRQ=",
        version = "v0.0.0-20231127013910-f6d9ecbf1de7",
    )
    go_repository(
        name = "com_github_julienschmidt_httprouter",
        importpath = "github.com/julienschmidt/httprouter",
        sum = "h1:U0609e9tgbseu3rBINet9P48AI/D3oJs4dN7jwJOQ1U=",
        version = "v1.3.0",
    )
    go_repository(
        name = "com_github_jzelinskie_whirlpool",
        importpath = "github.com/jzelinskie/whirlpool",
        sum = "h1:G+9t9cEtnC9jFiTxyptEKuNIAbiN5ZCQzX2a74lj3xg=",
        version = "v0.0.0-20201016144138-0675e54bb004",
    )
    go_repository(
        name = "com_github_kisielk_errcheck",
        importpath = "github.com/kisielk/errcheck",
        sum = "h1:e8esj/e4R+SAOwFwN+n3zr0nYeCyeweozKfO23MvHzY=",
        version = "v1.5.0",
    )
    go_repository(
        name = "com_github_kisielk_gotool",
        importpath = "github.com/kisielk/gotool",
        sum = "h1:AV2c/EiW3KqPNT9ZKl07ehoAGi4C5/01Cfbblndcapg=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_klauspost_compress",
        importpath = "github.com/klauspost/compress",
        sum = "h1:6KIumPrER1LHsvBVuDa0r5xaG0Es51mhhB9BQB2qeMA=",
        version = "v1.17.9",
    )
    go_repository(
        name = "com_github_klauspost_cpuid_v2",
        importpath = "github.com/klauspost/cpuid/v2",
        sum = "h1:+StwCXwm9PdpiEkPyzBXIy+M9KUb4ODm0Zarf1kS5BM=",
        version = "v2.2.8",
    )
    go_repository(
        name = "com_github_konsorten_go_windows_terminal_sequences",
        importpath = "github.com/konsorten/go-windows-terminal-sequences",
        sum = "h1:mweAR1A6xJ3oS2pRaGiHgQ4OO8tzTaLawm8vnODuwDk=",
        version = "v1.0.1",
    )
    go_repository(
        name = "com_github_koofr_go_httpclient",
        importpath = "github.com/koofr/go-httpclient",
        sum = "h1:CjEMN21Xkr9+zwPmZPaJJw+apzVbjGL5uK/6g9Q2jGU=",
        version = "v0.0.0-20240520111329-e20f8f203988",
    )
    go_repository(
        name = "com_github_koofr_go_koofrclient",
        importpath = "github.com/koofr/go-koofrclient",
        sum = "h1:FHVoZMOVRA+6/y4yRlbiR3WvsrOcKBd/f64H7YiWR2U=",
        version = "v0.0.0-20221207135200-cbd7fc9ad6a6",
    )
    go_repository(
        name = "com_github_kr_fs",
        importpath = "github.com/kr/fs",
        sum = "h1:Jskdu9ieNAYnjxsi0LbQp1ulIKZV1LAFgK1tWhpZgl8=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_kr_pretty",
        importpath = "github.com/kr/pretty",
        sum = "h1:flRD4NNwYAUpkphVc1HcthR4KEIFJ65n8Mw5qdRn3LE=",
        version = "v0.3.1",
    )
    go_repository(
        name = "com_github_kr_pty",
        importpath = "github.com/kr/pty",
        sum = "h1:VkoXIwSboBpnk99O/KFauAEILuNHv5DVFKZMBN/gUgw=",
        version = "v1.1.1",
    )
    go_repository(
        name = "com_github_kr_text",
        importpath = "github.com/kr/text",
        sum = "h1:5Nx0Ya0ZqY2ygV366QzturHI13Jq95ApcVaJBhpS+AY=",
        version = "v0.2.0",
    )
    go_repository(
        name = "com_github_kylelemons_godebug",
        importpath = "github.com/kylelemons/godebug",
        sum = "h1:RPNrshWIDI6G2gRW9EHilWtl7Z6Sb1BR0xunSBf0SNc=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_leodido_go_urn",
        importpath = "github.com/leodido/go-urn",
        sum = "h1:WT9HwE9SGECu3lg4d/dIA+jxlljEa1/ffXKmRjqdmIQ=",
        version = "v1.4.0",
    )
    go_repository(
        name = "com_github_lpar_date",
        importpath = "github.com/lpar/date",
        sum = "h1:bq/zVqFTUmsxvd/CylidY4Udqpr9BOFrParoP6p0x/I=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_lucasb_eyer_go_colorful",
        importpath = "github.com/lucasb-eyer/go-colorful",
        sum = "h1:1nnpGOrhyZZuNyfu1QjKiUICQ74+3FNCN69Aj6K7nkY=",
        version = "v1.2.0",
    )
    go_repository(
        name = "com_github_lufia_plan9stats",
        importpath = "github.com/lufia/plan9stats",
        sum = "h1:036IscGBfJsFIgJQzlui7nK1Ncm0tp2ktmPj8xO4N/0=",
        version = "v0.0.0-20231016141302-07b5767bb0ed",
    )
    go_repository(
        name = "com_github_magiconair_properties",
        importpath = "github.com/magiconair/properties",
        sum = "h1:IeQXZAiQcpL9mgcAe1Nu6cX9LLw6ExEHKjN0VQdvPDY=",
        version = "v1.8.7",
    )
    go_repository(
        name = "com_github_masterminds_semver_v3",
        importpath = "github.com/Masterminds/semver/v3",
        sum = "h1:3MEsd0SM6jqZojhjLWWeBY+Kcjy9i6MQAeY7YgDP83g=",
        version = "v3.2.0",
    )
    go_repository(
        name = "com_github_mattn_go_colorable",
        importpath = "github.com/mattn/go-colorable",
        sum = "h1:fFA4WZxdEF4tXPZVKMLwD8oUnCTTo08duU7wxecdEvA=",
        version = "v0.1.13",
    )
    go_repository(
        name = "com_github_mattn_go_isatty",
        importpath = "github.com/mattn/go-isatty",
        sum = "h1:xfD0iDuEKnDkl03q4limB+vH+GxLEtL/jb4xVJSWWEY=",
        version = "v0.0.20",
    )
    go_repository(
        name = "com_github_mattn_go_localereader",
        importpath = "github.com/mattn/go-localereader",
        sum = "h1:ygSAOl7ZXTx4RdPYinUpg6W99U8jWvWi9Ye2JC/oIi4=",
        version = "v0.0.1",
    )
    go_repository(
        name = "com_github_mattn_go_runewidth",
        importpath = "github.com/mattn/go-runewidth",
        sum = "h1:UNAjwbU9l54TA3KzvqLGxwWjHmMgBUVhBiTjelZgg3U=",
        version = "v0.0.15",
    )
    go_repository(
        name = "com_github_mattn_go_sqlite3",
        importpath = "github.com/mattn/go-sqlite3",
        sum = "h1:mCRHCLDUBXgpKAqIKsaAaAsrAlbkeomtRFKXh2L6YIM=",
        version = "v1.14.17",
    )
    go_repository(
        name = "com_github_max_sum_base32768",
        importpath = "github.com/Max-Sum/base32768",
        sum = "h1:nzE1YQBdx1bq9IlZinHa+HVffy+NmVRoKr+wHN8fpLE=",
        version = "v0.0.0-20230304063302-18e6ce5945fd",
    )
    go_repository(
        name = "com_github_microsoft_go_winio",
        importpath = "github.com/Microsoft/go-winio",
        sum = "h1:9/kr64B9VUZrLm5YYwbGtUJnMgqWVOdUAXu6Migciow=",
        version = "v0.6.1",
    )
    go_repository(
        name = "com_github_minio_md5_simd",
        importpath = "github.com/minio/md5-simd",
        sum = "h1:Gdi1DZK69+ZVMoNHRXJyNcxrMA4dSxoYHZSQbirFg34=",
        version = "v1.1.2",
    )
    go_repository(
        name = "com_github_minio_minio_go_v6",
        importpath = "github.com/minio/minio-go/v6",
        sum = "h1:waExJtO53xrnsNX//7cSc1h3478wqTryDx4RVD7o26I=",
        version = "v6.0.46",
    )
    go_repository(
        name = "com_github_minio_minio_go_v7",
        importpath = "github.com/minio/minio-go/v7",
        sum = "h1:fTo/XlPBTSpo3BAMshlwKL5RspXRv9us5UeHEGYCFe0=",
        version = "v7.0.74",
    )
    go_repository(
        name = "com_github_minio_sha256_simd",
        importpath = "github.com/minio/sha256-simd",
        sum = "h1:5QHSlgo3nt5yKOJrC7W8w7X+NFl8cMPZm96iu8kKUJU=",
        version = "v0.1.1",
    )
    go_repository(
        name = "com_github_mitchellh_go_homedir",
        importpath = "github.com/mitchellh/go-homedir",
        sum = "h1:lukF9ziXFxDFPkA1vsr5zpc1XuPDn/wFntq5mG+4E0Y=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_mitchellh_mapstructure",
        importpath = "github.com/mitchellh/mapstructure",
        sum = "h1:jeMsZIYE/09sWLaz43PL7Gy6RuMjD2eJVyuac5Z2hdY=",
        version = "v1.5.0",
    )
    go_repository(
        name = "com_github_moby_sys_mountinfo",
        importpath = "github.com/moby/sys/mountinfo",
        sum = "h1:1shs6aH5s4o5H2zQLn796ADW1wMrIwHsyJ2v9KouLrg=",
        version = "v0.7.2",
    )
    go_repository(
        name = "com_github_modern_go_concurrent",
        importpath = "github.com/modern-go/concurrent",
        sum = "h1:TRLaZ9cD/w8PVh93nsPXa1VrQ6jlwL5oN8l14QlcNfg=",
        version = "v0.0.0-20180306012644-bacd9c7ef1dd",
    )
    go_repository(
        name = "com_github_modern_go_reflect2",
        importpath = "github.com/modern-go/reflect2",
        sum = "h1:xBagoLtFs94CBntxluKeaWgTMpvLxC4ur3nMaC9Gz0M=",
        version = "v1.0.2",
    )
    go_repository(
        name = "com_github_montanaflynn_stats",
        importpath = "github.com/montanaflynn/stats",
        sum = "h1:r3y12KyNxj/Sb/iOE46ws+3mS1+MZca1wlHQFPsY/JU=",
        version = "v0.7.0",
    )
    go_repository(
        name = "com_github_muesli_ansi",
        importpath = "github.com/muesli/ansi",
        sum = "h1:1XF24mVaiu7u+CFywTdcDo2ie1pzzhwjt6RHqzpMU34=",
        version = "v0.0.0-20211018074035-2e021307bc4b",
    )
    go_repository(
        name = "com_github_muesli_cancelreader",
        importpath = "github.com/muesli/cancelreader",
        sum = "h1:3I4Kt4BQjOR54NavqnDogx/MIoWBFa0StPA8ELUXHmA=",
        version = "v0.2.2",
    )
    go_repository(
        name = "com_github_muesli_reflow",
        importpath = "github.com/muesli/reflow",
        sum = "h1:IFsN6K9NfGtjeggFP+68I4chLZV2yIKsXJFNZ+eWh6s=",
        version = "v0.3.0",
    )
    go_repository(
        name = "com_github_muesli_termenv",
        importpath = "github.com/muesli/termenv",
        sum = "h1:GohcuySI0QmI3wN8Ok9PtKGkgkFIk7y6Vpb5PvrY+Wo=",
        version = "v0.15.2",
    )
    go_repository(
        name = "com_github_mwitkow_go_conntrack",
        importpath = "github.com/mwitkow/go-conntrack",
        sum = "h1:KUppIJq7/+SVif2QVs3tOP0zanoHgBEVAwHxUSIzRqU=",
        version = "v0.0.0-20190716064945-2f068394615f",
    )
    go_repository(
        name = "com_github_ncw_swift_v2",
        importpath = "github.com/ncw/swift/v2",
        sum = "h1:8R9dmgFIWs+RiVlisCEfiQiik1hjuR0JnOkLxaP9ihg=",
        version = "v2.0.3",
    )
    go_repository(
        name = "com_github_nfnt_resize",
        importpath = "github.com/nfnt/resize",
        sum = "h1:zYyBkD/k9seD2A7fsi6Oo2LfFZAehjjQMERAvZLEDnQ=",
        version = "v0.0.0-20180221191011-83c6a9932646",
    )
    go_repository(
        name = "com_github_nxadm_tail",
        importpath = "github.com/nxadm/tail",
        sum = "h1:nPr65rt6Y5JFSKQO7qToXr7pePgD6Gwiw05lkbyAQTE=",
        version = "v1.4.8",
    )
    go_repository(
        name = "com_github_onsi_ginkgo",
        importpath = "github.com/onsi/ginkgo",
        sum = "h1:8xi0RTUf59SOSfEtZMvwTvXYMzG4gV23XVHOZiXNtnE=",
        version = "v1.16.5",
    )
    go_repository(
        name = "com_github_onsi_ginkgo_v2",
        importpath = "github.com/onsi/ginkgo/v2",
        sum = "h1:oJcvKpIb7/8uLpDDtnQuf18xVnwKp8DTD7DQ6gTd/MU=",
        version = "v2.17.3",
    )
    go_repository(
        name = "com_github_onsi_gomega",
        importpath = "github.com/onsi/gomega",
        sum = "h1:dsYjIxxSR755MDmKVsaFQTE22ChNBcuuTWgkUDSubOk=",
        version = "v1.33.1",
    )
    go_repository(
        name = "com_github_oracle_oci_go_sdk_v65",
        importpath = "github.com/oracle/oci-go-sdk/v65",
        sum = "h1:lROMJ8/VakGOGObAWUxTVY2AX1wQCUIzVqfL4Fb2Ay8=",
        version = "v65.69.2",
    )
    go_repository(
        name = "com_github_panjf2000_ants_v2",
        importpath = "github.com/panjf2000/ants/v2",
        sum = "h1:Q5vh5xohbsZXGcD6hhszzGqB7jSSc2/CRr3QKIga8Kw=",
        version = "v2.9.1",
    )
    go_repository(
        name = "com_github_patrickmn_go_cache",
        importpath = "github.com/patrickmn/go-cache",
        sum = "h1:HRMgzkcYKYpi3C8ajMPV8OFXaaRUnok+kx1WdO15EQc=",
        version = "v2.1.0+incompatible",
    )
    go_repository(
        name = "com_github_pborman_getopt",
        importpath = "github.com/pborman/getopt",
        sum = "h1:eJ3aFZroQqq0bWmraivjQNt6Dmm5M0h2JcDW38/Azb0=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_pelletier_go_toml_v2",
        importpath = "github.com/pelletier/go-toml/v2",
        sum = "h1:aYUidT7k73Pcl9nb2gScu7NSrKCSHIDE89b3+6Wq+LM=",
        version = "v2.2.2",
    )
    go_repository(
        name = "com_github_pengsrc_go_shared",
        importpath = "github.com/pengsrc/go-shared",
        sum = "h1:XeOYlK9W1uCmhjJSsY78Mcuh7MVkNjTzmHx1yBzizSU=",
        version = "v0.2.1-0.20190131101655-1999055a4a14",
    )
    go_repository(
        name = "com_github_pierrec_lz4_v4",
        importpath = "github.com/pierrec/lz4/v4",
        sum = "h1:xaKrnTkyoqfh1YItXl56+6KJNVYWlEEPuAQW9xsplYQ=",
        version = "v4.1.18",
    )
    go_repository(
        name = "com_github_pkg_browser",
        importpath = "github.com/pkg/browser",
        sum = "h1:+mdjkGKdHQG3305AYmdv1U2eRNDiU2ErMBj1gwrq8eQ=",
        version = "v0.0.0-20240102092130-5ac0b6a4141c",
    )
    go_repository(
        name = "com_github_pkg_diff",
        importpath = "github.com/pkg/diff",
        sum = "h1:+/+DxvQaYifJ+grD4klzrS5y+KJXldn/2YTl5JG+vZ8=",
        version = "v0.0.0-20200914180035-5b29258ca4f7",
    )
    go_repository(
        name = "com_github_pkg_errors",
        importpath = "github.com/pkg/errors",
        sum = "h1:FEBLx1zS214owpjy7qsBeixbURkuhQAwrK5UwLGTwt4=",
        version = "v0.9.1",
    )
    go_repository(
        name = "com_github_pkg_profile",
        importpath = "github.com/pkg/profile",
        sum = "h1:hnbDkaNWPCLMO9wGLdBFTIZvzDrDfBM2072E1S9gJkA=",
        version = "v1.7.0",
    )
    go_repository(
        name = "com_github_pkg_sftp",
        importpath = "github.com/pkg/sftp",
        sum = "h1:JFZT4XbOU7l77xGSpOdW+pwIMqP044IyjXX6FGyEKFo=",
        version = "v1.13.6",
    )
    go_repository(
        name = "com_github_pkg_xattr",
        importpath = "github.com/pkg/xattr",
        sum = "h1:5883YPCtkSd8LFbs13nXplj9g9tlrwoJRjgpgMu1/fE=",
        version = "v0.4.9",
    )
    go_repository(
        name = "com_github_pmezard_go_difflib",
        importpath = "github.com/pmezard/go-difflib",
        sum = "h1:Jamvg5psRIccs7FGNTlIRMkT8wgtp5eCXdBlqhYGL6U=",
        version = "v1.0.1-0.20181226105442-5d4384ee4fb2",
    )
    go_repository(
        name = "com_github_polydawn_go_timeless_api",
        importpath = "github.com/polydawn/go-timeless-api",
        sum = "h1:LQ103HjiN76aqIxnQNgdZ+7NveuKd45+Q+TYGJVVsyw=",
        version = "v0.0.0-20220821201550-b93919e12c56",
    )
    go_repository(
        name = "com_github_polydawn_refmt",
        importpath = "github.com/polydawn/refmt",
        sum = "h1:ZOcivgkkFRnjfoTcGsDq3UQYiBmekwLA+qg0OjyB/ls=",
        version = "v0.0.0-20201211092308-30ac6d18308e",
    )
    go_repository(
        name = "com_github_polydawn_rio",
        importpath = "github.com/polydawn/rio",
        sum = "h1:SNhgcsCNGEqz7Tp46YHEvcjF1s5x+ZGWcVzFoghkuMA=",
        version = "v0.0.0-20220823181337-7c31ad9831a4",
    )
    go_repository(
        name = "com_github_power_devops_perfstat",
        importpath = "github.com/power-devops/perfstat",
        sum = "h1:0LFwY6Q3gMACTjAbMZBjXAqTOzOwFaj2Ld6cjeQ7Rig=",
        version = "v0.0.0-20221212215047-62379fc7944b",
    )
    go_repository(
        name = "com_github_prometheus_client_golang",
        importpath = "github.com/prometheus/client_golang",
        sum = "h1:wZWJDwK+NameRJuPGDhlnFgx8e8HN3XHQeLaYJFJBOE=",
        version = "v1.19.1",
    )
    go_repository(
        name = "com_github_prometheus_client_model",
        importpath = "github.com/prometheus/client_model",
        sum = "h1:VQw1hfvPvk3Uv6Qf29VrPF32JB6rtbgI6cYPYQjL0Qw=",
        version = "v0.5.0",
    )
    go_repository(
        name = "com_github_prometheus_common",
        importpath = "github.com/prometheus/common",
        sum = "h1:QO8U2CdOzSn1BBsmXJXduaaW+dY/5QLjfB8svtSzKKE=",
        version = "v0.48.0",
    )
    go_repository(
        name = "com_github_prometheus_procfs",
        importpath = "github.com/prometheus/procfs",
        sum = "h1:jluTpSng7V9hY0O2R9DzzJHYb2xULk9VTR1V1R/k6Bo=",
        version = "v0.12.0",
    )
    go_repository(
        name = "com_github_protonmail_bcrypt",
        importpath = "github.com/ProtonMail/bcrypt",
        sum = "h1:yc9daCCYUefEs69zUkSzubzjBbL+cmOXgnmt9Fyd9ug=",
        version = "v0.0.0-20211005172633-e235017c1baf",
    )
    go_repository(
        name = "com_github_protonmail_gluon",
        importpath = "github.com/ProtonMail/gluon",
        sum = "h1:lCsqUUACrcMC83lg5rTo9Y0PnPItE61JSfvMyIcANwk=",
        version = "v0.17.1-0.20230724134000-308be39be96e",
    )
    go_repository(
        name = "com_github_protonmail_go_crypto",
        importpath = "github.com/ProtonMail/go-crypto",
        sum = "h1:LRuvITjQWX+WIfr930YHG2HNfjR1uOfyf5vE0kC2U78=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_protonmail_go_mbox",
        importpath = "github.com/ProtonMail/go-mbox",
        sum = "h1:vrEcpvX5YfOkld5Q2fil41gXnLbYWKbE2gezZr6rqBU=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_protonmail_go_mime",
        importpath = "github.com/ProtonMail/go-mime",
        sum = "h1:tCbYj7/299ekTTXpdwKYF8eBlsYsDVoggDAuAjoK66k=",
        version = "v0.0.0-20230322103455-7d82a3887f2f",
    )
    go_repository(
        name = "com_github_protonmail_go_srp",
        importpath = "github.com/ProtonMail/go-srp",
        sum = "h1:Sos3Qk+th4tQR64vsxGIxYpN3rdnG9Wf9K4ZloC1JrI=",
        version = "v0.0.7",
    )
    go_repository(
        name = "com_github_protonmail_gopenpgp_v2",
        importpath = "github.com/ProtonMail/gopenpgp/v2",
        sum = "h1:Vz/8+HViFFnf2A6XX8JOvZMrA6F5puwNvvF21O1mRlo=",
        version = "v2.7.4",
    )
    go_repository(
        name = "com_github_puerkitobio_goquery",
        importpath = "github.com/PuerkitoBio/goquery",
        sum = "h1:uQxhNlArOIdbrH1tr0UXwdVFgDcZDrZVdcpygAcwmWM=",
        version = "v1.8.1",
    )
    go_repository(
        name = "com_github_putdotio_go_putio_putio",
        importpath = "github.com/putdotio/go-putio/putio",
        sum = "h1:Y258uzXU/potCYnQd1r6wlAnoMB68BiCkCcCnKx1SH8=",
        version = "v0.0.0-20200123120452-16d982cac2b8",
    )
    go_repository(
        name = "com_github_quasilyte_go_ruleguard_dsl",
        importpath = "github.com/quasilyte/go-ruleguard/dsl",
        sum = "h1:wd8zkOhSNr+I+8Qeciml08ivDt1pSXe60+5DqOpCjPE=",
        version = "v0.3.22",
    )
    go_repository(
        name = "com_github_quic_go_qtls_go1_20",
        importpath = "github.com/quic-go/qtls-go1-20",
        sum = "h1:D33340mCNDAIKBqXuAvexTNMUByrYmFYVfKfDN5nfFs=",
        version = "v0.4.1",
    )
    go_repository(
        name = "com_github_quic_go_quic_go",
        importpath = "github.com/quic-go/quic-go",
        sum = "h1:X3AGzUNFs0jVuO3esAGnTfvdgvL4fq655WaOi1snv1Q=",
        version = "v0.40.1",
    )
    go_repository(
        name = "com_github_rasky_go_xdr",
        importpath = "github.com/rasky/go-xdr",
        sum = "h1:UVArwN/wkKjMVhh2EQGC0tEc1+FqiLlvYXY5mQ2f8Wg=",
        version = "v0.0.0-20170124162913-1a41d1a06c93",
    )
    go_repository(
        name = "com_github_rclone_gofakes3",
        importpath = "github.com/rclone/gofakes3",
        sum = "h1:0YRo2aYhE+SCZsjWYMFe8zLD18xieXy7wQ8M9Ywcr/g=",
        version = "v0.0.3-0.20240807151802-e80146f8de87",
    )
    go_repository(
        name = "com_github_relvacode_iso8601",
        importpath = "github.com/relvacode/iso8601",
        sum = "h1:HguUjsGpIMh/zsTczGN3DVJFxTU/GX+MMmzcKoMO7ko=",
        version = "v1.3.0",
    )
    go_repository(
        name = "com_github_rfjakob_eme",
        importpath = "github.com/rfjakob/eme",
        sum = "h1:SxziR8msSOElPayZNFfQw4Tjx/Sbaeeh3eRvrHVMUs4=",
        version = "v1.1.2",
    )
    go_repository(
        name = "com_github_rivo_uniseg",
        importpath = "github.com/rivo/uniseg",
        sum = "h1:WUdvkW8uEhrYfLC4ZzdpI2ztxP1I582+49Oc5Mq64VQ=",
        version = "v0.4.7",
    )
    go_repository(
        name = "com_github_rogpeppe_go_internal",
        importpath = "github.com/rogpeppe/go-internal",
        sum = "h1:exVL4IDcn6na9z1rAb56Vxr+CgyK3nn3O+epU5NdKM8=",
        version = "v1.12.0",
    )
    go_repository(
        name = "com_github_rs_xid",
        importpath = "github.com/rs/xid",
        sum = "h1:mKX4bl4iPYJtEIxp6CYiUuLQ/8DYMoz0PUdtGgMFRVc=",
        version = "v1.5.0",
    )
    go_repository(
        name = "com_github_russross_blackfriday_v2",
        importpath = "github.com/russross/blackfriday/v2",
        sum = "h1:JIOH55/0cWyOuilr9/qlrm0BSXldqnqwMsf35Ld67mk=",
        version = "v2.1.0",
    )
    go_repository(
        name = "com_github_ryszard_goskiplist",
        importpath = "github.com/ryszard/goskiplist",
        sum = "h1:GHRpF1pTW19a8tTFrMLUcfWwyC0pnifVo2ClaLq+hP8=",
        version = "v0.0.0-20150312221310-2dfbae5fcf46",
    )
    go_repository(
        name = "com_github_sabhiram_go_gitignore",
        importpath = "github.com/sabhiram/go-gitignore",
        sum = "h1:OkMGxebDjyw0ULyrTYWeN0UNCCkmCWfjPnIA2W6oviI=",
        version = "v0.0.0-20210923224102-525f6e181f06",
    )
    go_repository(
        name = "com_github_sagikazarmark_locafero",
        importpath = "github.com/sagikazarmark/locafero",
        sum = "h1:HApY1R9zGo4DBgr7dqsTH/JJxLTTsOt7u6keLGt6kNQ=",
        version = "v0.4.0",
    )
    go_repository(
        name = "com_github_sagikazarmark_slog_shim",
        importpath = "github.com/sagikazarmark/slog-shim",
        sum = "h1:diDBnUNK9N/354PgrxMywXnAwEr1QZcOr6gto+ugjYE=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_samber_lo",
        importpath = "github.com/samber/lo",
        sum = "h1:z7RynLwP5nbyRscyvcD043DWYoOcYRv3mV8lBeqOCLc=",
        version = "v1.47.0",
    )
    go_repository(
        name = "com_github_sergi_go_diff",
        importpath = "github.com/sergi/go-diff",
        sum = "h1:Kpca3qRNrduNnOQeazBd0ysaKrUJiIuISHxogkT9RPQ=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_shabbyrobe_gocovmerge",
        importpath = "github.com/shabbyrobe/gocovmerge",
        sum = "h1:S77Pf5fIGMa7oSwp8SQPp7Hb4ZiI38K3RNBKD2LLeEM=",
        version = "v0.0.0-20230507112040-c3350d9342df",
    )
    go_repository(
        name = "com_github_shirou_gopsutil_v3",
        importpath = "github.com/shirou/gopsutil/v3",
        sum = "h1:i0t8kL+kQTvpAYToeuiVk3TgDeKOFioZO3Ztz/iZ9pI=",
        version = "v3.24.5",
    )
    go_repository(
        name = "com_github_shoenig_go_m1cpu",
        importpath = "github.com/shoenig/go-m1cpu",
        sum = "h1:nxdKQNcEB6vzgA2E2bvzKIYRuNj7XNJ4S/aRSwKzFtM=",
        version = "v0.1.6",
    )
    go_repository(
        name = "com_github_shoenig_test",
        importpath = "github.com/shoenig/test",
        sum = "h1:kVTaSd7WLz5WZ2IaoM0RSzRsUD+m8wRR+5qvntpn4LU=",
        version = "v0.6.4",
    )
    go_repository(
        name = "com_github_shopspring_decimal",
        importpath = "github.com/shopspring/decimal",
        sum = "h1:abSATXmQEYyShuxI4/vyW3tV1MrKAJzCZ/0zLUXYbsQ=",
        version = "v1.2.0",
    )
    go_repository(
        name = "com_github_sirupsen_logrus",
        importpath = "github.com/sirupsen/logrus",
        sum = "h1:dueUQJ1C2q9oE3F7wvmSGAaVtTmUizReu6fjN8uqzbQ=",
        version = "v1.9.3",
    )
    go_repository(
        name = "com_github_skratchdot_open_golang",
        importpath = "github.com/skratchdot/open-golang",
        sum = "h1:JIAuq3EEf9cgbU6AtGPK4CTG3Zf6CKMNqf0MHTggAUA=",
        version = "v0.0.0-20200116055534-eef842397966",
    )
    go_repository(
        name = "com_github_smartystreets_assertions",
        importpath = "github.com/smartystreets/assertions",
        sum = "h1:zE9ykElWQ6/NYmHa3jpm/yHnI4xSofP+UP6SpjHcSeM=",
        version = "v0.0.0-20180927180507-b2de0cb4f26d",
    )
    go_repository(
        name = "com_github_smartystreets_goconvey",
        importpath = "github.com/smartystreets/goconvey",
        sum = "h1:pa8hGb/2YqsZKovtsgrwcDH1RZhVbTKCjLp47XpqCDs=",
        version = "v0.0.0-20190330032615-68dc04aab96a",
    )
    go_repository(
        name = "com_github_snabb_httpreaderat",
        importpath = "github.com/snabb/httpreaderat",
        sum = "h1:whlb+vuZmyjqVop8x1EKOg05l2NE4z9lsMMXjmSUCnY=",
        version = "v1.0.1",
    )
    go_repository(
        name = "com_github_sony_gobreaker",
        importpath = "github.com/sony/gobreaker",
        sum = "h1:dRCvqm0P490vZPmy7ppEk2qCnCieBooFJ+YoXGYB+yg=",
        version = "v0.5.0",
    )
    go_repository(
        name = "com_github_sourcegraph_conc",
        importpath = "github.com/sourcegraph/conc",
        sum = "h1:OQTbbt6P72L20UqAkXXuLOj79LfEanQ+YQFNpLA9ySo=",
        version = "v0.3.0",
    )
    go_repository(
        name = "com_github_spacemonkeygo_monkit_v3",
        importpath = "github.com/spacemonkeygo/monkit/v3",
        sum = "h1:4/g8IVItBDKLdVnqrdHZrCVPpIrwDBzl1jrV0IHQHDU=",
        version = "v3.0.22",
    )
    go_repository(
        name = "com_github_spf13_afero",
        importpath = "github.com/spf13/afero",
        sum = "h1:WJQKhtpdm3v2IzqG8VMqrr6Rf3UYpEF239Jy9wNepM8=",
        version = "v1.11.0",
    )
    go_repository(
        name = "com_github_spf13_cast",
        importpath = "github.com/spf13/cast",
        sum = "h1:GEiTHELF+vaR5dhz3VqZfFSzZjYbgeKDpBxQVS4GYJ0=",
        version = "v1.6.0",
    )
    go_repository(
        name = "com_github_spf13_cobra",
        importpath = "github.com/spf13/cobra",
        sum = "h1:e5/vxKd/rZsfSJMUX1agtjeTDf+qv1/JdBF8gg5k9ZM=",
        version = "v1.8.1",
    )
    go_repository(
        name = "com_github_spf13_pflag",
        importpath = "github.com/spf13/pflag",
        sum = "h1:iy+VFUOCP1a+8yFto/drg2CJ5u0yRoB7fZw3DKv/JXA=",
        version = "v1.0.5",
    )
    go_repository(
        name = "com_github_spf13_viper",
        importpath = "github.com/spf13/viper",
        sum = "h1:LUXCnvUvSM6FXAsj6nnfc8Q2tp1dIgUfY9Kc8GsSOiQ=",
        version = "v1.18.2",
    )
    go_repository(
        name = "com_github_stephens2424_writerset",
        importpath = "github.com/stephens2424/writerset",
        sum = "h1:znRLgU6g8RS5euYRcy004XeE4W+Tu44kALzy7ghPif8=",
        version = "v1.0.2",
    )
    go_repository(
        name = "com_github_stretchr_objx",
        importpath = "github.com/stretchr/objx",
        sum = "h1:xuMeJ0Sdp5ZMRXx/aWO6RZxdr3beISkG5/G/aIRr3pY=",
        version = "v0.5.2",
    )
    go_repository(
        name = "com_github_stretchr_testify",
        importpath = "github.com/stretchr/testify",
        sum = "h1:HtqpIVDClZ4nwg75+f6Lvsy/wHu+3BoSGCbBAcpTsTg=",
        version = "v1.9.0",
    )
    go_repository(
        name = "com_github_subosito_gotenv",
        importpath = "github.com/subosito/gotenv",
        sum = "h1:9NlTDc1FTs4qu0DDq7AEtTPNw6SVm7uBMsUCUjABIf8=",
        version = "v1.6.0",
    )
    go_repository(
        name = "com_github_t3rm1n4l_go_mega",
        importpath = "github.com/t3rm1n4l/go-mega",
        sum = "h1:Jtcrb09q0AVWe3BGe8qtuuGxNSHWGkTWr43kHTJ+CpA=",
        version = "v0.0.0-20240219080617-d494b6a8ace7",
    )
    go_repository(
        name = "com_github_tailscale_depaware",
        importpath = "github.com/tailscale/depaware",
        sum = "h1:34icjjmqJ2HPjrSuJYEkdZ+0ItmGQAQ75cRHIiftIyE=",
        version = "v0.0.0-20210622194025-720c4b409502",
    )
    go_repository(
        name = "com_github_tklauser_go_sysconf",
        importpath = "github.com/tklauser/go-sysconf",
        sum = "h1:GBUpcahXSpR2xN01jhkNAbTLRk2Yzgggk8IM08lq3r4=",
        version = "v0.3.13",
    )
    go_repository(
        name = "com_github_tklauser_numcpus",
        importpath = "github.com/tklauser/numcpus",
        sum = "h1:yjuerZP127QG9m5Zh/mSO4wqurYil27tHrqwRoRjpr4=",
        version = "v0.7.0",
    )
    go_repository(
        name = "com_github_tv42_httpunix",
        importpath = "github.com/tv42/httpunix",
        sum = "h1:u6SKchux2yDvFQnDHS3lPnIRmfVJ5Sxy3ao2SIdysLQ=",
        version = "v0.0.0-20191220191345-2ba4b9c3382c",
    )
    go_repository(
        name = "com_github_twitchyliquid64_golang_asm",
        importpath = "github.com/twitchyliquid64/golang-asm",
        sum = "h1:SU5vSMR7hnwNxj24w34ZyCi/FmDZTkS4MhqMhdFk5YI=",
        version = "v0.15.1",
    )
    go_repository(
        name = "com_github_ugorji_go_codec",
        importpath = "github.com/ugorji/go/codec",
        sum = "h1:9LC83zGrHhuUA9l16C9AHXAqEV/2wBQ4nkvumAE65EE=",
        version = "v1.2.12",
    )
    go_repository(
        name = "com_github_unknwon_goconfig",
        importpath = "github.com/unknwon/goconfig",
        sum = "h1:rS7O+CmUdli1T+oDm7fYj1MwqNWtEJfNj+FqcUHML8U=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_urfave_cli_v2",
        importpath = "github.com/urfave/cli/v2",
        sum = "h1:0gyJJEBYtCV87zI/x2nZCPyDxD51K6xM8SkwjHFCNEU=",
        version = "v2.24.4",
    )
    go_repository(
        name = "com_github_warpfork_go_errcat",
        importpath = "github.com/warpfork/go-errcat",
        sum = "h1:FIB2fi7XJGHIdf5rWNsfFQqatIKxutT45G+wNuMQNgs=",
        version = "v0.0.0-20180917083543-335044ffc86e",
    )
    go_repository(
        name = "com_github_willscott_go_nfs",
        importpath = "github.com/willscott/go-nfs",
        sum = "h1:IGSoH2aBagQ9VI8ZwbjHYIslta5vXfczegV1B4y9KqY=",
        version = "v0.0.3-0.20240425122109-91bc38957cc9",
    )
    go_repository(
        name = "com_github_willscott_go_nfs_client",
        importpath = "github.com/willscott/go-nfs-client",
        sum = "h1:U0DnHRZFzoIV1oFEZczg5XyPut9yxk9jjtax/9Bxr/o=",
        version = "v0.0.0-20240104095149-b44639837b00",
    )
    go_repository(
        name = "com_github_willscott_memphis",
        importpath = "github.com/willscott/memphis",
        sum = "h1:1eHCP4w7tMmpfFBdrd5ff+vYU9THtrtA1yM9f0TLlJw=",
        version = "v0.0.0-20210922141505-529d4987ab7e",
    )
    go_repository(
        name = "com_github_winfsp_cgofuse",
        importpath = "github.com/winfsp/cgofuse",
        sum = "h1:j3un8DqYvvAOqKI5OPz+/RRVhDFipbPKI4t2Uk5RBJw=",
        version = "v1.5.1-0.20221118130120-84c0898ad2e0",
    )
    go_repository(
        name = "com_github_xanzy_ssh_agent",
        importpath = "github.com/xanzy/ssh-agent",
        sum = "h1:+/15pJfg/RsTxqYcX6fHqOXZwwMP+2VyYWJeWM2qQFM=",
        version = "v0.3.3",
    )
    go_repository(
        name = "com_github_xhit_go_str2duration_v2",
        importpath = "github.com/xhit/go-str2duration/v2",
        sum = "h1:lxklc02Drh6ynqX+DdPyp5pCKLUQpRT8bp8Ydu2Bstc=",
        version = "v2.1.0",
    )
    go_repository(
        name = "com_github_xrash_smetrics",
        importpath = "github.com/xrash/smetrics",
        sum = "h1:bAn7/zixMGCfxrRTfdpNzjtPYqr8smhKouy9mxVdGPU=",
        version = "v0.0.0-20201216005158-039620a65673",
    )
    go_repository(
        name = "com_github_youmark_pkcs8",
        importpath = "github.com/youmark/pkcs8",
        sum = "h1:fZHgsYlfvtyqToslyjUt3VOPF4J7aK/3MPcK7xp3PDk=",
        version = "v0.0.0-20201027041543-1326539a0a0a",
    )
    go_repository(
        name = "com_github_yuin_goldmark",
        importpath = "github.com/yuin/goldmark",
        sum = "h1:fVcFKWvrslecOb/tg+Cc05dkeYx540o0FuFt3nUVDoE=",
        version = "v1.4.13",
    )
    go_repository(
        name = "com_github_yunify_qingstor_sdk_go_v3",
        importpath = "github.com/yunify/qingstor-sdk-go/v3",
        sum = "h1:9sB2WZMgjwSUNZhrgvaNGazVltoFUUfuS9f0uCWtTr8=",
        version = "v3.2.0",
    )
    go_repository(
        name = "com_github_yusufpapurcu_wmi",
        importpath = "github.com/yusufpapurcu/wmi",
        sum = "h1:zFUKzehAFReQwLys1b/iSMl+JQGSCSjtVqQn9bBrPo0=",
        version = "v1.2.4",
    )
    go_repository(
        name = "com_github_zeebo_admission_v3",
        importpath = "github.com/zeebo/admission/v3",
        sum = "h1:mwP/Y9EE8zRXOK8ma7CpEJfpiaKv4D4JWIOU4E8FPOw=",
        version = "v3.0.3",
    )
    go_repository(
        name = "com_github_zeebo_assert",
        importpath = "github.com/zeebo/assert",
        sum = "h1:vukIABvugfNMZMQO1ABsyQDJDTVQbn+LWSMy1ol1h6A=",
        version = "v1.3.1",
    )
    go_repository(
        name = "com_github_zeebo_blake3",
        importpath = "github.com/zeebo/blake3",
        sum = "h1:TFoLXsjeXqRNFxSbk35Dk4YtszE/MQQGK10BH4ptoTg=",
        version = "v0.2.3",
    )
    go_repository(
        name = "com_github_zeebo_errs",
        importpath = "github.com/zeebo/errs",
        sum = "h1:hmiaKqgYZzcVgRL1Vkc1Mn2914BbzB0IBxs+ebeutGs=",
        version = "v1.3.0",
    )
    go_repository(
        name = "com_github_zeebo_errs_v2",
        importpath = "github.com/zeebo/errs/v2",
        sum = "h1:edtyFoQq9OBBsNPcu0b0wHtRvA8haukAHrGyOfWQGNI=",
        version = "v2.0.5",
    )
    go_repository(
        name = "com_github_zeebo_float16",
        importpath = "github.com/zeebo/float16",
        sum = "h1:kRqxv5og6z1emEyz5FpW0/BVHe5VfxEAw6b1ljCZlUc=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_zeebo_goof",
        importpath = "github.com/zeebo/goof",
        sum = "h1:W/fHn8aWJEBCQcLeeNBoWToCxB6H/j9hu2Gopnzmp+k=",
        version = "v0.0.0-20230907150950-e9457bc94477",
    )
    go_repository(
        name = "com_github_zeebo_incenc",
        importpath = "github.com/zeebo/incenc",
        sum = "h1:+cwNE5KJ3pika4HuzmDHkDlK5myo0G9Sv+eO7WWxnUQ=",
        version = "v0.0.0-20180505221441-0d92902eec54",
    )
    go_repository(
        name = "com_github_zeebo_mwc",
        importpath = "github.com/zeebo/mwc",
        sum = "h1:9dNXNLtUB4lUXoXgyhy3YrKoV0OD7oRiu907YMS0nl0=",
        version = "v0.0.4",
    )
    go_repository(
        name = "com_github_zeebo_pcg",
        importpath = "github.com/zeebo/pcg",
        sum = "h1:lyqfGeWiv4ahac6ttHs+I5hwtH/+1mrhlCtVNQM2kHo=",
        version = "v1.0.1",
    )
    go_repository(
        name = "com_github_zeebo_structs",
        importpath = "github.com/zeebo/structs",
        sum = "h1:kvcd7s2LqXuO9cdV5LqrGHCOAfCBXaZpKCA3jD9SJIc=",
        version = "v1.0.2",
    )
    go_repository(
        name = "com_github_zeebo_sudo",
        importpath = "github.com/zeebo/sudo",
        sum = "h1:6RpQNYeWtd7ycPwYSRgceNdbjodamyyuapNB8mQ1V0M=",
        version = "v1.0.2",
    )
    go_repository(
        name = "com_github_zeebo_xxh3",
        importpath = "github.com/zeebo/xxh3",
        sum = "h1:xZmwmqxHZA8AI603jOQ0tMqmBr9lPeFwGg6d+xy9DC0=",
        version = "v1.0.2",
    )
    go_repository(
        name = "com_google_cloud_go",
        importpath = "cloud.google.com/go",
        sum = "h1:CnFSK6Xo3lDYRoBKEcAtia6VSC837/ZkJuRduSFnr14=",
        version = "v0.115.0",
    )
    go_repository(
        name = "com_google_cloud_go_auth",
        importpath = "cloud.google.com/go/auth",
        sum = "h1:kf/x9B3WTbBUHkC+1VS8wwwli9TzhSt0vSTVBmMR8Ts=",
        version = "v0.7.0",
    )
    go_repository(
        name = "com_google_cloud_go_auth_oauth2adapt",
        importpath = "cloud.google.com/go/auth/oauth2adapt",
        sum = "h1:+TTV8aXpjeChS9M+aTtN/TjdQnzJvmzKFt//oWu7HX4=",
        version = "v0.2.2",
    )
    go_repository(
        name = "com_google_cloud_go_bigquery",
        importpath = "cloud.google.com/go/bigquery",
        sum = "h1:CpT+/njKuKT3CEmswm6IbhNu9u35zt5dO4yPDLW+nG4=",
        version = "v1.59.1",
    )
    go_repository(
        name = "com_google_cloud_go_compute",
        importpath = "cloud.google.com/go/compute",
        sum = "h1:ZRpHJedLtTpKgr3RV1Fx23NuaAEN1Zfx9hw1u4aJdjU=",
        version = "v1.25.1",
    )
    go_repository(
        name = "com_google_cloud_go_compute_metadata",
        importpath = "cloud.google.com/go/compute/metadata",
        sum = "h1:vHzJCWaM4g8XIcm8kopr3XmDA4Gy/lblD3EhhSux05c=",
        version = "v0.4.0",
    )
    go_repository(
        name = "com_google_cloud_go_datastore",
        importpath = "cloud.google.com/go/datastore",
        sum = "h1:/May9ojXjRkPBNVrq+oWLqmWCkr4OU5uRY29bu0mRyQ=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_google_cloud_go_iam",
        importpath = "cloud.google.com/go/iam",
        sum = "h1:bEa06k05IO4f4uJonbB5iAgKTPpABy1ayxaIZV/GHVc=",
        version = "v1.1.6",
    )
    go_repository(
        name = "com_google_cloud_go_profiler",
        importpath = "cloud.google.com/go/profiler",
        sum = "h1:ZeRDZbsOBDyRG0OiK0Op1/XWZ3xeLwJc9zjkzczUxyY=",
        version = "v0.4.0",
    )
    go_repository(
        name = "com_google_cloud_go_pubsub",
        importpath = "cloud.google.com/go/pubsub",
        sum = "h1:ukjixP1wl0LpnZ6LWtZJ0mX5tBmjp1f8Sqer8Z2OMUU=",
        version = "v1.3.1",
    )
    go_repository(
        name = "com_google_cloud_go_storage",
        importpath = "cloud.google.com/go/storage",
        sum = "h1:STgFzyU5/8miMl0//zKh2aQeTyeaUH3WN9bSUiJ09bA=",
        version = "v1.10.0",
    )
    go_repository(
        name = "com_shuralyov_dmitri_gpu_mtl",
        importpath = "dmitri.shuralyov.com/gpu/mtl",
        sum = "h1:VpgP7xuJadIUuKccphEpTJnWhS2jkQyMt6Y7pJCD7fY=",
        version = "v0.0.0-20190408044501-666a987793e9",
    )
    go_repository(
        name = "in_gopkg_check_v1",
        importpath = "gopkg.in/check.v1",
        sum = "h1:Hei/4ADfdWqJk1ZMxUNpqntNwaWcugrBjAiHlqqRiVk=",
        version = "v1.0.0-20201130134442-10cb98267c6c",
    )
    go_repository(
        name = "in_gopkg_errgo_v2",
        importpath = "gopkg.in/errgo.v2",
        sum = "h1:0vLT13EuvQ0hNvakwLuFZ/jYrLp5F3kcWHXdRggjCE8=",
        version = "v2.1.0",
    )
    go_repository(
        name = "in_gopkg_fsnotify_v1",
        importpath = "gopkg.in/fsnotify.v1",
        sum = "h1:xOHLXZwVvI9hhs+cLKq5+I5onOuwQLhQwiu63xxlHs4=",
        version = "v1.4.7",
    )
    go_repository(
        name = "in_gopkg_ini_v1",
        importpath = "gopkg.in/ini.v1",
        sum = "h1:Dgnx+6+nfE+IfzjUEISNeydPJh9AXNNsWbGP9KzCsOA=",
        version = "v1.67.0",
    )
    go_repository(
        name = "in_gopkg_tomb_v1",
        importpath = "gopkg.in/tomb.v1",
        sum = "h1:uRGJdciOHaEIrze2W8Q3AKkepLTh2hOroT7a+7czfdQ=",
        version = "v1.0.0-20141024135613-dd632973f1e7",
    )
    go_repository(
        name = "in_gopkg_validator_v2",
        importpath = "gopkg.in/validator.v2",
        sum = "h1:xF0KWyGWXm/LM2G1TrEjqOu4pa6coO9AlWSf3msVfDY=",
        version = "v2.0.1",
    )
    go_repository(
        name = "in_gopkg_yaml_v2",
        importpath = "gopkg.in/yaml.v2",
        sum = "h1:D8xgwECY7CYvx+Y2n4sBz93Jn9JRvxdiyyo8CTfuKaY=",
        version = "v2.4.0",
    )
    go_repository(
        name = "in_gopkg_yaml_v3",
        importpath = "gopkg.in/yaml.v3",
        sum = "h1:fxVm/GzAzEWqLHuvctI91KS9hhNmmWOoWu0XTYJS7CA=",
        version = "v3.0.1",
    )
    go_repository(
        name = "io_etcd_go_bbolt",
        importpath = "go.etcd.io/bbolt",
        sum = "h1:+BqfJTcCzTItrop8mq/lbzL8wSGtj94UO/3U31shqG0=",
        version = "v1.3.10",
    )
    go_repository(
        name = "io_etcd_go_gofail",
        importpath = "go.etcd.io/gofail",
        sum = "h1:XItAMIhOojXFQMgrxjnd2EIIHun/d5qL0Pf7FzVTkFg=",
        version = "v0.1.0",
    )
    go_repository(
        name = "io_goftp_server_v2",
        importpath = "goftp.io/server/v2",
        sum = "h1:H+9UbCX2N206ePDSVNCjBftOKOgil6kQ5RAQNx5hJwE=",
        version = "v2.0.1",
    )
    go_repository(
        name = "io_moul_http2curl_v2",
        importpath = "moul.io/http2curl/v2",
        sum = "h1:9r3JfDzWPcbIklMOs2TnIFzDYvfAZvjeavG6EzP7jYs=",
        version = "v2.3.0",
    )
    go_repository(
        name = "io_opencensus_go",
        importpath = "go.opencensus.io",
        sum = "h1:y73uSU6J157QMP2kn2r30vwW1A2W2WFwSCGnAVxeaD0=",
        version = "v0.24.0",
    )
    go_repository(
        name = "io_opentelemetry_go_contrib_instrumentation_google_golang_org_grpc_otelgrpc",
        importpath = "go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc",
        sum = "h1:4Pp6oUg3+e/6M4C0A/3kJ2VYa++dsWVTtGgLVj5xtHg=",
        version = "v0.49.0",
    )
    go_repository(
        name = "io_opentelemetry_go_contrib_instrumentation_net_http_otelhttp",
        importpath = "go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp",
        sum = "h1:jq9TW8u3so/bN+JPT166wjOI6/vQPF6Xe7nMNIltagk=",
        version = "v0.49.0",
    )
    go_repository(
        name = "io_opentelemetry_go_otel",
        importpath = "go.opentelemetry.io/otel",
        sum = "h1:0LAOdjNmQeSTzGBzduGe/rU4tZhMwL5rWgtp9Ku5Jfo=",
        version = "v1.24.0",
    )
    go_repository(
        name = "io_opentelemetry_go_otel_metric",
        importpath = "go.opentelemetry.io/otel/metric",
        sum = "h1:6EhoGWWK28x1fbpA4tYTOWBkPefTDQnb8WSGXlc88kI=",
        version = "v1.24.0",
    )
    go_repository(
        name = "io_opentelemetry_go_otel_trace",
        importpath = "go.opentelemetry.io/otel/trace",
        sum = "h1:CsKnnL4dUAr/0llH9FKuc698G04IrpWV0MQA/Y1YELI=",
        version = "v1.24.0",
    )
    go_repository(
        name = "io_rsc_binaryregexp",
        importpath = "rsc.io/binaryregexp",
        sum = "h1:HfqmD5MEmC0zvwBuF187nq9mdnXjXsSivRiXN7SmRkE=",
        version = "v0.2.0",
    )
    go_repository(
        name = "io_rsc_quote_v3",
        importpath = "rsc.io/quote/v3",
        sum = "h1:9JKUTTIUgS6kzR9mK1YuGKv6Nl+DijDNIc0ghT58FaY=",
        version = "v3.1.0",
    )
    go_repository(
        name = "io_rsc_sampler",
        importpath = "rsc.io/sampler",
        sum = "h1:7uVkIFmeBqHfdjD+gZwtXXI+RODJ2Wc4O7MPEh/QiW4=",
        version = "v1.3.0",
    )
    go_repository(
        name = "io_storj_common",
        importpath = "storj.io/common",
        sum = "h1:Urs3fX+1Fyb+CFKGw0mCJV3MPR499WM+Vs6osw4Rqtk=",
        version = "v0.0.0-20240812101423-26b53789c348",
    )
    go_repository(
        name = "io_storj_drpc",
        importpath = "storj.io/drpc",
        sum = "h1:hLvEV2RMTscX3JHPd+LSQCeTt8i1Q0Yt7U2EdfyMnaQ=",
        version = "v0.0.35-0.20240709171858-0075ac871661",
    )
    go_repository(
        name = "io_storj_eventkit",
        importpath = "storj.io/eventkit",
        sum = "h1:TkytkGUI6zGtH5Qx/O0VxQCcYJqOOiwRq0oMi4uM5Tg=",
        version = "v0.0.0-20240415002644-1d9596fee086",
    )
    go_repository(
        name = "io_storj_infectious",
        importpath = "storj.io/infectious",
        sum = "h1:rGIdDC/6gNYAStsxsZU79D/MqFjNyJc1tsyyj9sTl7Q=",
        version = "v0.0.2",
    )
    go_repository(
        name = "io_storj_monkit_jaeger",
        importpath = "storj.io/monkit-jaeger",
        sum = "h1:XkLxAvogynNQu/1gM/F5MjBRgUGYdqWXWcwccZsm1SQ=",
        version = "v0.0.0-20240221095020-52b0792fa6cd",
    )
    go_repository(
        name = "io_storj_picobuf",
        importpath = "storj.io/picobuf",
        sum = "h1:xAUPB5ZUGfxkqd3bnw3zp01kkWb9wlhg4vtZWUs2S9A=",
        version = "v0.0.3",
    )
    go_repository(
        name = "io_storj_uplink",
        importpath = "storj.io/uplink",
        sum = "h1:C8RdW/upALoCyuF16Lod9XGCXEdbJAS+ABQy9JO/0pA=",
        version = "v1.13.1",
    )
    go_repository(
        name = "org_bazil_fuse",
        importpath = "bazil.org/fuse",
        sum = "h1:A0NsYy4lDBZAC6QiYeJ4N+XuHIKBpyhAVRMHRQZKTeQ=",
        version = "v0.0.0-20230120002735-62a210ff1fd5",
    )
    go_repository(
        name = "org_golang_google_api",
        importpath = "google.golang.org/api",
        sum = "h1:51y8fJ/b1AaaBRJr4yWm96fPcuxSo0JcegXE3DaHQHw=",
        version = "v0.188.0",
    )
    go_repository(
        name = "org_golang_google_appengine",
        importpath = "google.golang.org/appengine",
        sum = "h1:IhEN5q69dyKagZPYMSdIjS2HqprW324FRQZJcGqPAsM=",
        version = "v1.6.8",
    )
    go_repository(
        name = "org_golang_google_genproto",
        importpath = "google.golang.org/genproto",
        sum = "h1:dSTjko30weBaMj3eERKc0ZVXW4GudCswM3m+P++ukU0=",
        version = "v0.0.0-20240708141625-4ad9e859172b",
    )
    go_repository(
        name = "org_golang_google_genproto_googleapis_api",
        importpath = "google.golang.org/genproto/googleapis/api",
        sum = "h1:0+ozOGcrp+Y8Aq8TLNN2Aliibms5LEzsq99ZZmAGYm0=",
        version = "v0.0.0-20240701130421-f6361c86f094",
    )
    go_repository(
        name = "org_golang_google_genproto_googleapis_bytestream",
        importpath = "google.golang.org/genproto/googleapis/bytestream",
        sum = "h1:HD1mcQ5mRhp3kzY9/QUKQEg4f0UnbPXt94Ljd1l8PiQ=",
        version = "v0.0.0-20240708141625-4ad9e859172b",
    )
    go_repository(
        name = "org_golang_google_genproto_googleapis_rpc",
        importpath = "google.golang.org/genproto/googleapis/rpc",
        sum = "h1:04+jVzTs2XBnOZcPsLnmrTGqltqJbZQ1Ey26hjYdQQ0=",
        version = "v0.0.0-20240708141625-4ad9e859172b",
    )
    go_repository(
        name = "org_golang_google_grpc",
        importpath = "google.golang.org/grpc",
        sum = "h1:LKtvyfbX3UGVPFcGqJ9ItpVWW6oN/2XqTxfAnwRRXiA=",
        version = "v1.64.1",
    )
    go_repository(
        name = "org_golang_google_protobuf",
        importpath = "google.golang.org/protobuf",
        sum = "h1:6xV6lTsCfpGD21XK49h7MhtcApnLqkfYgPcdHftf6hg=",
        version = "v1.34.2",
    )
    go_repository(
        name = "org_golang_x_arch",
        importpath = "golang.org/x/arch",
        sum = "h1:3wRIsP3pM4yUptoR96otTUOXI367OS0+c9eeRi9doIc=",
        version = "v0.8.0",
    )
    go_repository(
        name = "org_golang_x_crypto",
        importpath = "golang.org/x/crypto",
        sum = "h1:ypSNr+bnYL2YhwoMt2zPxHFmbAN1KZs/njMG3hxUp30=",
        version = "v0.25.0",
    )
    go_repository(
        name = "org_golang_x_exp",
        importpath = "golang.org/x/exp",
        sum = "h1:2dVuKD2vS7b0QIHQbpyTISPd0LeHDbnYEryqj5Q1ug8=",
        version = "v0.0.0-20240719175910-8a7402abbf56",
    )
    go_repository(
        name = "org_golang_x_exp_shiny",
        importpath = "golang.org/x/exp/shiny",
        sum = "h1:3AGKexOYqL+ztdWdkB1bDwXgPBuTS/S8A4WzuTvJ8Cg=",
        version = "v0.0.0-20230817173708-d852ddb80c63",
    )
    go_repository(
        name = "org_golang_x_image",
        importpath = "golang.org/x/image",
        sum = "h1:jGzIakQa/ZXI1I0Fxvaa9W7yP25TqT6cHIHn+6CqvSQ=",
        version = "v0.18.0",
    )
    go_repository(
        name = "org_golang_x_lint",
        importpath = "golang.org/x/lint",
        sum = "h1:Wh+f8QHJXR411sJR8/vRBTZ7YapZaRvUcLFFJhusH0k=",
        version = "v0.0.0-20200302205851-738671d3881b",
    )
    go_repository(
        name = "org_golang_x_mobile",
        importpath = "golang.org/x/mobile",
        sum = "h1:/VlmIrkuLf2wzPjkZ8imSpckHoW7Y71h66dxbLHSpi8=",
        version = "v0.0.0-20240716161057-1ad2df20a8b6",
    )
    go_repository(
        name = "org_golang_x_mod",
        importpath = "golang.org/x/mod",
        sum = "h1:fEdghXQSo20giMthA7cd28ZC+jts4amQ3YMXiP5oMQ8=",
        version = "v0.19.0",
    )
    go_repository(
        name = "org_golang_x_net",
        importpath = "golang.org/x/net",
        sum = "h1:5K3Njcw06/l2y9vpGCSdcxWOYHOUk3dVNGDXN+FvAys=",
        version = "v0.27.0",
    )
    go_repository(
        name = "org_golang_x_oauth2",
        importpath = "golang.org/x/oauth2",
        sum = "h1:tsimM75w1tF/uws5rbeHzIWxEqElMehnc+iW793zsZs=",
        version = "v0.21.0",
    )
    go_repository(
        name = "org_golang_x_sync",
        importpath = "golang.org/x/sync",
        sum = "h1:3NFvSEYkUoMifnESzZl15y791HH1qU2xm6eCJU5ZPXQ=",
        version = "v0.8.0",
    )
    go_repository(
        name = "org_golang_x_sys",
        importpath = "golang.org/x/sys",
        sum = "h1:RI27ohtqKCnwULzJLqkv897zojh5/DwS/ENaMzUOaWI=",
        version = "v0.22.0",
    )
    go_repository(
        name = "org_golang_x_telemetry",
        importpath = "golang.org/x/telemetry",
        sum = "h1:zf5N6UOrA487eEFacMePxjXAJctxKmyjKUsjA11Uzuk=",
        version = "v0.0.0-20240521205824-bda55230c457",
    )
    go_repository(
        name = "org_golang_x_term",
        importpath = "golang.org/x/term",
        sum = "h1:BbsgPEJULsl2fV/AT3v15Mjva5yXKQDyKf+TbDz7QJk=",
        version = "v0.22.0",
    )
    go_repository(
        name = "org_golang_x_text",
        importpath = "golang.org/x/text",
        sum = "h1:XtiM5bkSOt+ewxlOE/aE/AKEHibwj/6gvWMl9Rsh0Qc=",
        version = "v0.17.0",
    )
    go_repository(
        name = "org_golang_x_time",
        importpath = "golang.org/x/time",
        sum = "h1:o7cqy6amK/52YcAKIPlM3a+Fpj35zvRj2TP+e1xFSfk=",
        version = "v0.5.0",
    )
    go_repository(
        name = "org_golang_x_tools",
        importpath = "golang.org/x/tools",
        sum = "h1:SGsXPZ+2l4JsgaCKkx+FQ9YZ5XEtA1GZYuoDjenLjvg=",
        version = "v0.23.0",
    )
    go_repository(
        name = "org_golang_x_xerrors",
        importpath = "golang.org/x/xerrors",
        sum = "h1:+cNy6SZtPcJQH3LJVLOSmiC7MMxXNOb3PU/VUEz+EhU=",
        version = "v0.0.0-20231012003039-104605ab7028",
    )
    go_repository(
        name = "org_uber_go_goleak",
        importpath = "go.uber.org/goleak",
        sum = "h1:NBol2c7O1ZokfZ0LEU9K6Whx/KnwvepVetCUhtKja4A=",
        version = "v1.2.1",
    )
    go_repository(
        name = "org_uber_go_mock",
        importpath = "go.uber.org/mock",
        sum = "h1:3mUxI1No2/60yUYax92Pt8eNOEecx2D3lcXZh2NEZJo=",
        version = "v0.3.0",
    )
    go_repository(
        name = "org_uber_go_multierr",
        importpath = "go.uber.org/multierr",
        sum = "h1:S0h4aNzvfcFsC3dRF1jLoaov7oRaKqRGC/pUEJ2yvPQ=",
        version = "v1.10.0",
    )
    go_repository(
        name = "org_uber_go_zap",
        importpath = "go.uber.org/zap",
        sum = "h1:aJMhYGrd5QSmlpLMr2MftRKl7t8J8PTZPA732ud/XR8=",
        version = "v1.27.0",
    )
