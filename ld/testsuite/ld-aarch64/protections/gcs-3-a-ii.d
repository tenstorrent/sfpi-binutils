#name: Specifying only '-z gcs=always -z gcs-report=warning' with mixed inputs emits GCS feature and warnings [shared]
#source: gcs.s
#source: gcs2.s
#source: nogcs.s
#alltargets: [check_shared_lib_support] *linux*
#as: -march=armv9.4-a+gcs -defsym __property_gcs__=1
#ld: -shared -z gcs=always -z gcs-report=warning
#warning: \A[^\n]*nogcs\.o: warning: GCS is required by -z gcs[^\n]*$
#readelf: -n

Displaying notes found in: .note.gnu.property
[ 	]+Owner[ 	]+Data size[ 	]+Description
  GNU                  0x00000010	NT_GNU_PROPERTY_TYPE_0
      Properties: AArch64 feature: GCS
