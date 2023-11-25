import axios from 'axios';
import {useState} from 'react';
function GalleryImage({ image ,displayGallery}) {

  const [isShowingDescription, setDescriptionStatus] = useState(false);


  const toggleDescription = () =>{
    setDescriptionStatus(!isShowingDescription);

  }

  const displayDescription = () => {

    if(isShowingDescription){
      return(

        <div>
        <br/>
        <em data-testid="description">{image.description}</em>
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
     data-testid="galleryItem"
       className="image">
          <div data-testid="toggle" onClick={toggleDescription}>
            {displayDescription()}
          </div>

          <p>likes: {image.likes}</p>
      <button data-testid="like" onClick={addLike}>I do it all 4u rate me</button>
    </div>
  );
}

export default GalleryImage;
