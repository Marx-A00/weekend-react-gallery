import { useState, useEffect, useRef } from 'react';
import Header from "../Header/Header";
import axios from 'axios';
import GalleryList from '../GalleryList/GalleryList';
import GalleryImage from '../GalleryList/GalleryImage';

function App() {
  const alternateGalleryStatus = useRef(false);

  useEffect(() => {
    if(alternateGalleryStatus.current == false){
      displayGallery();
    }
    else{
      displayAlternateGallery();
    }
  }, []);

  const [galleryList,setGalleryList] = useState([]);

  const displayGallery = () => {
    axios
      .get("/gallery")
      .then((response) => {
        setGalleryList(response.data);
      })
      .catch((err) => {
        alert("error getting gallery");
        console.log(err);
      });
  };
  // may be fucked up, how does comp know which get route to choose??
  // may have to fuck with the routes
  const displayAlternateGallery=()=>{
    axios
    .get("/gallery_memes")
    .then((response) => {
      setGalleryList(response.data);
    })
    .catch((err) => {
      alert("error getting gallery");
      console.log(err);
    });

  }

  return (
    <div data-testid="app">
      <Header />
      <GalleryList
      displayGallery={displayGallery}
      displayAlternateGallery={displayAlternateGallery}
       galleryList={galleryList}
       alternateGalleryStatus={alternateGalleryStatus} />
    </div>
  );
}

export default App;
