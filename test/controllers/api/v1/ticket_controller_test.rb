require 'test_helper'

module Api
  module V1
    class Api::V1::TicketControllerTest < ActionDispatch::IntegrationTest
      setup do
        @header = {
          'Content-Type': 'application/json'
        }
      end

      test "call api to insert json" do
        json_data = '{
          "ContactCenter": "UPCA",
          "RequestNumber": "09252012-00001",
          "ReferenceRequestNumber": "",
          "VersionNumber": "0",
          "SequenceNumber": "2421",
          "RequestType": "Normal",
          "RequestAction": "Restake",
          "DateTimes": {
            "RequestTakenDateTime": "2011/07/02 23:09:38",
            "TransmissionDateTime": "",
            "LegalDateTime": "2011/07/08 07:00:00",
            "ResponseDueDateTime": "2011/07/07 23:59:59",
            "RestakeDate": "2011/07/21 00:00:00",
            "ExpirationDate": "2011/07/26 00:00:00",
            "LPMeetingAcceptDueDate": "",
            "OverheadBeginDate": "",
            "OverheadEndDate": ""
          },
          "ServiceArea": {
            "PrimaryServiceAreaCode": {
              "SACode": "ZZGL103"
            },
            "AdditionalServiceAreaCodes": {
              "SACode": [
                "ZZL01",
                "ZZL02",
                "ZZL03"
              ]
            }
          },
          "Excavator": {
            "CompanyName": "John Doe CONSTRUCTION",
            "Address": "555 Some RD",
            "City": "SOME PARK",
            "State": "ZZ",
            "Zip": "55555",
            "Type": "Excavator",
            "Contact": {
              "Name": "Johnny Doe",
              "Phone": "1115552345",
              "Email": "example@example.com"
            },
            "FieldContact": {
              "Name": "Field Contact",
              "Phone": "1235557924",
              "Email": "example@example.com"
            },
            "CrewOnsite": "true"
          },
          "ExcavationInfo": {
            "TypeOfWork": "rpr man hole tops",
            "WorkDoneFor": "gpc",
            "ProjectDuration": "60 days",
            "ProjectStartDate": "2011/07/08 07:00:00",
            "Explosives": "No",
            "UndergroundOverhead": "Underground",
            "HorizontalBoring": "Road, Driveway, and Sidewalk",
            "Whitelined": "No",
            "LocateInstructions": "locate along the r/o/w on both sides of the rd - including the rd itself - from inter to inter ",
            "Remarks": "Previous Request Number:05161-120-011\n\n\t\t\tPrevious Request Number:06044-254-020\n\n\t\t\tPrevious Request Number:06171-300-030",
            "DigsiteInfo": {
              "LookupBy": "MANUAL",
              "LocationType": "Multiple Address",
              "Subdivision": "",
              "AddressInfo": {
                "State": "ST",
                "County": "COUNTY",
                "Place": "PLACE",
                "Zip": "",
                "Address": {
                  "AddressNum": [
                    "Address 1",
                    "Address 2"
                  ]
                },
                "Street": {
                  "Prefix": "",
                  "Name": "Trinity",
                  "Type": "Ave",
                  "Suffix": "SW"
                }
              },
              "NearStreet": {
                "State": "XX",
                "County": "SomeCounty",
                "Place": "City",
                "Prefix": "",
                "Name": "",
                "Type": "",
                "Suffix": ""
              },
              "Intersection": {
                "ItoI": [{
                    "State": "XX",
                    "County": "FULERTON",
                    "Place": "NORCROSS",
                    "Prefix": "",
                    "Name": "London",
                    "Type": "St",
                    "Suffix": "SW"
                  },
                  {
                    "State": "ZZ",
                    "County": "COUNTY",
                    "Place": "ATLANTA",
                    "Prefix": "",
                    "Name": "Jefferson",
                    "Type": "Ave",
                    "Suffix": "SW"
                  }
                ]
              },
              "WellKnownText": "POLYGON ((-9388407.6010849569 4046158.9036691156, -9388407.6010757331 4045598.9683762509, -9387944.1299591586 4045598.9683860973, -9387944.129966408 4046158.9036577442, -9388407.6010849569 4046158.9036691156))"
            }
          }
        }'

        post(
          '/api/v1/regist', 
          headers: @header, 
          params: json_data
        )
        assert_response :success
      end
    end
  end
end