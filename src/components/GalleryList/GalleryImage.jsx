import axios from 'axios';
import {useState,useRef} from 'react';

function GalleryImage({ image ,displayGallery,steps}) {
  const determinedPath = [[5,5],[5,4],[5,3],[5,2],[5,1],[5,0],[4,0]];
  
  
  const [isShowingDescription, setDescriptionStatus] = useState(false);
  


  const toggleDescription = () =>{

    setDescriptionStatus(!isShowingDescription);

  }

  function handleMouseEnter(e){
    console.log("Steps top of handleMouseEnter :",steps);
    // gonna need a Current path variable to keep track of current path

    let xCoordinate = Number(e.target.getAttribute('row'));
    console.log('x coord:',xCoordinate)
    let yCoordinate = Number(e.target.getAttribute('column'));
    console.log('y coord:',yCoordinate)
    let coordinateArray = [xCoordinate,yCoordinate];
    console.log("coordinate Array: ",coordinateArray);
    compareCoordinateWithMazeSolution(xCoordinate,yCoordinate,steps);

  }

  // current step on path variable may be needed
  function compareCoordinateWithMazeSolution(xCoordinate,yCoordinate){
    // error handling goes here
    console.log(" steps top of compare function:", steps.current);
    console.log("expected element in determined path array",determinedPath[steps.current][0],determinedPath[steps.current][1]);
    if(xCoordinate !== determinedPath[steps.current][0] ||
      yCoordinate !== determinedPath[steps.current][1])
      {
        alert("wrong step!");
      }

      else{
        steps.current++;
        console.log("steps inside compare",steps.current);
      }
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
