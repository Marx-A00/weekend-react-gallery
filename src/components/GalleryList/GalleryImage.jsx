import axios from 'axios';
import {useState,useRef} from 'react';

function GalleryImage({ image ,displayGallery,steps,displayAlternateGallery}){
  const determinedPath =
[
  [9, 9],[9, 8],[9, 7],[9, 6],[9, 5],[8, 5],[8, 6],[8, 7],[8, 8],[7,8],
  [6,8],[5,8],[5,9],[4,9],[3,9],[2,9],[1,9],[0,9],[0,8],
  [0,7],[0,6],[0,5],[0,4],[0,3],[0,2],[0,1],[0,0],[1,0],[2,0],[3,0],[3,1], 
  [2,1],[1,1],[1,2],[1,3],[1,4],[1,5],[1,6],[2,6],[2,7],[3,7],[4,7],[5,7],
  [6,7],[7,7],[7,6],[7,5],[7,4],[7,3],[7,2],[6,2],[5,2],[5,3],[4,3],[3,3],[3,4],[4,4]
]

  
  const [isShowingDescription, setDescriptionStatus] = useState(false);
  

  const toggleDescription = () =>{

    setDescriptionStatus(!isShowingDescription);

  }

  function handleMouseEnter(e){
    // // gonna need a Current path variable to keep track of current path

    let xCoordinate = Number(e.target.getAttribute('row'));
    let yCoordinate = Number(e.target.getAttribute('column'));
    compareCoordinateWithMazeSolution(xCoordinate,yCoordinate,steps);
  }


  // current step on path variable may be needed
  function compareCoordinateWithMazeSolution(xCoordinate,yCoordinate){
    // error handling goes here
    // handle current path
    console.log(" steps top of compare function:", steps.current);
    console.log("expected element in determined path array",determinedPath[steps.current][0],determinedPath[steps.current][1]);
    if(xCoordinate !== determinedPath[steps.current][0] ||  // OR or AND? AND??
      yCoordinate !== determinedPath[steps.current][1])
      {
        alert("wrong step!");
        location.reload();
      }

      //winning scenario
      else if(xCoordinate === 4 &&
        yCoordinate === 4){
          // 'it's just a dream'
          displayAlternateGallery();

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


