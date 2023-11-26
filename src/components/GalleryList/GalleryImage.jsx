import axios from 'axios';
import {useState} from 'react';
import { Tooltip } from 'react-tooltip'
function GalleryImage({ image ,displayGallery}) {
  let determinedPath = [[5,5],[5,4],[5,3],[5,2],[5,1],[5,0]];


  const [isShowingDescription, setDescriptionStatus] = useState(false);


  const toggleDescription = () =>{

    setDescriptionStatus(!isShowingDescription);

  }

  function handleMouseEnter(e){
    // gonna need a Current path variable to keep track of current path

    let xCoordinate = e.target.getAttribute('row');
    let yCoordinate = e.target.getAttribute('column');
    console.log(e.target.getAttribute('row'),e.target.getAttribute('column'));
    if(compareCoordinateWithMazeSolution(xCoordinate,yCoordinate)){
      setDescriptionStatus(true);
    }
  
    

  }
  // current step on path variable may be needed
  function compareCoordinateWithMazeSolution(xCoordinate,yCoordinate){
    if(xCoordinate != determinedPath[0][0] ||
      yCoordinate != determinedPath[0][1])
      {
        alert("wrong step!");
      }
      else{
        return true;
      }
  }


  
  const displayNormalImage = () =>{
    return(
      <div>
      <img
      className='image'
      height={150} width={150} src={`${image.url}`}
      title="galleryItem">
      </img>

      </div>

    )

  }

  const displayDescription = () => {

    if(isShowingDescription){
      return(

        <div>
        <br/>
        <em data-testid="description">{image.description}</em>
        <p>{image.row}, {image.column}</p>
        <br />
        </div>
      )
    }
    else{
      return(
        <div>
        <img
        className='image'
        height={150} width={150} src={`${image.url}`}
        row={image.row}
        column={image.column}
        title="galleryItem">
        </img>


        </div>
      )
    }
  }

  const addLike = () => {
    axios({
      method: 'PUT',
      url: `/gallery/like/${image.id}`,
    })
    .then((response)=> {
      displayGallery();
    })
    .catch()
  }



  return (
    <div style={{ width: 150, height: 150 }}
    onMouseEnter={handleMouseEnter}
     data-testid="galleryItem"
       className="image">
  
        
          <div data-testid="toggle" onClick={toggleDescription}>
            {displayDescription()}
          </div>
    </div>
  );
}

export default GalleryImage;

// desired path (5,5),(5,4),(5,3),(5,2),(5,1),(5,0)
