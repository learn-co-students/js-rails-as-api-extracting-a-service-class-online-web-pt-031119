class SightingSerializer
 ## initialize will take in whatever variable we're dealing with in a particular action, and store it as an instance variable:

def initialize(sighting_object)
  @sighting = sighting_object
end

## get our data customized and ready to go as a JSON string
# def to_serialized_json
#   @sighting.to_json(:include => {
#     :bird => {:only => [:name, :species]},
#     :location => {:only => [:latitude, :longitude]}
#   }, :except => [:updated_at])
# end
  #more readable version of above code
def to_serialized_json
  options = {
    include: {
      bird: {
        only: [:name, :species]
      },
      location: {
        only: [:latitude, :longitude]
      }
    },
    except: [:updated_at],
  }
  @sighting.to_json(options)
end
 
end