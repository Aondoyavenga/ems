import {
  Avatar,
  Button,
  CircularProgress,
  IconButton,
  Typography,
} from "@material-ui/core";
import { AddAPhoto, Check, History, Restore } from "@material-ui/icons";
import React, { Fragment, PureComponent } from "react";
import ReactCrop from "react-image-crop";
import "react-image-crop/dist/ReactCrop.css";
import "./uploadAvatar.css";
import axios from "axios";
import AppSnackbar from "./global/AppSnackbar";

class AvatarUpload extends PureComponent {
  state = {
    blob: null,
    src: null,
    crop: {
      unit: "%",
      width: 50,
      height: 50,
      margin: "auto",
      aspect: 5 / 5,
    },
    appDialog: false,
    message: "",
    success: false,
  };

  onSelectFile = (e) => {
    if (e.target.files && e.target.files.length > 0) {
      const reader = new FileReader();
      reader.addEventListener("load", () =>
        this.setState({ src: reader.result })
      );
      reader.readAsDataURL(e.target.files[0]);
    }
  };

  // If you setState the crop in here you should return false.
  onImageLoaded = (image) => {
    this.imageRef = image;
  };

  onCropComplete = (crop) => {
    this.makeClientCrop(crop);
    // this.setState({src: null})
  };

  handleCropComplete = () => {
    this.setState({
      src: null,
    });
  };

  onCropChange = (crop, percentCrop) => {
    // You could also use percentCrop:
    // this.setState({ crop: percentCrop });
    this.setState({ crop });
  };

  async makeClientCrop(crop) {
    if (this.imageRef && crop.width && crop.height) {
      const croppedImageUrl = await this.getCroppedImg(
        this.imageRef,
        crop,
        "newFile.jpeg"
      );
      this.setState({ croppedImageUrl });
    }
  }

  getCroppedImg(image, crop, fileName) {
    const canvas = document.createElement("canvas");
    const scaleX = image.naturalWidth / image.width;
    const scaleY = image.naturalHeight / image.height;
    canvas.width = crop.width;
    canvas.height = crop.height;
    const ctx = canvas.getContext("2d");
    ctx.drawImage(
      image,
      crop.x * scaleX,
      crop.y * scaleY,
      crop.width * scaleX,
      crop.height * scaleY,
      0,
      0,
      crop.width,
      crop.height
    );

    return new Promise((resolve, reject) => {
      canvas.toBlob((blob) => {
        if (!blob) {
          //reject(new Error('Canvas is empty'));
          // console.error("Canvas is empty");
          return;
        }
        blob.name = fileName;
        window.URL.revokeObjectURL(this.fileUrl);
        this.fileUrl = window.URL.createObjectURL(blob);
        resolve(this.fileUrl);
        this.setState({ blob: blob });
      }, "image/jpeg");
    });
  }

  handleSubmitAvatar = () => {
    this.setState({
      appDialog: true,
    });
    this.props.setOpen(true);
    const data = new FormData();
    // const id = this.props.mandate.split(' ')[0]
    data.append("photo", this.state.blob);
    axios
      .post(this.props.url, data, {
        headers: {
          Authorization: `Bearer ${this.props.token}`,
        },
      })
      .then((res) => {
        this.setState({
          src: null,
          appDialog: false,
          message: res.data.message,
          success: true,
        });
        this.props.setMandate(false);
        this.props.setOpen(false);

        // this.props.toggle(!this.props.isOpen)
        this.props.sessionFunc();
        return this.props.actions.profileUser();
      })
      .catch((err) => {
        this.setState({
          appDialog: false,
        });
        this.props.setOpen(false);
      });
  };

  render() {
    const { crop, croppedImageUrl, src, success, message } = this.state;
    const setOpen = () => {
      this.setState({
        success: false,
      });
    };
    return (
      <div className="upload_avatar">
        <AppSnackbar open={success} message={message} setOpen={setOpen} />
        <div className="avatar_container">
          <label htmlFor="upload">
            <IconButton
              size="small"
              style={{ background: "#2A3F54" }}
              onClick={() => this.myInput.click()}
            >
              <Avatar>
                <AddAPhoto style={{ color: "#1ABB9C" }} />
              </Avatar>
            </IconButton>
          </label>
          <Typography variant="p" style={{ color: "#1ABB9C", marginLeft: 10 }}>
            {" "}
            Select {this.props.title ? this.props.title : "Photo"} For Upload
          </Typography>
          <input
            ref={(ref) => (this.myInput = ref)}
            id="upload"
            type="file"
            style={{ display: "none" }}
            accept="image/*"
            onChange={this.onSelectFile}
          />
        </div>

        {src && (
          <ReactCrop
            src={src}
            crop={crop}
            ruleOfThirds
            onImageLoaded={this.onImageLoaded}
            onComplete={this.onCropComplete}
            onChange={this.onCropChange}
            keepSelection={true}
            style={{ height: "200px", width: "200px", margin: "auto" }}
          />
        )}
        {croppedImageUrl && (
          <Fragment>
            <div
              style={{
                flex: 1,
                justifyContent: "center",
                alignItems: "center",
                flexDirection: "column",
              }}
            >
              <Avatar
                src={croppedImageUrl}
                variant="square"
                style={{ width: "130px", height: "130px" }}
              />
            </div>

            <section
              className="m-4"
              style={{
                display: "flex",
                alignItems: "center",
                flexDirection: "row",
                justifyContent: "center",
                gap: "5px",
              }}
            >
              <div>
                <Button
                  size="small"
                  startIcon={<Check style={{ color: "#20c997" }} />}
                  style={{ background: "#2A3F54", color: "white" }}
                  variant="contained"
                  onClick={this.handleSubmitAvatar}
                >
                  upload
                </Button>
              </div>
              <div>
                <Button
                  startIcon={<History color="secondary" />}
                  variant="outlined"
                  color="secondary"
                  onClick={() => {
                    this.setState({ src: null });
                    this.myInput.click();
                  }}
                >
                  Reset
                </Button>
              </div>
              {this.state.appDialog && (
                <CircularProgress size="20px" color="secondary" />
              )}
            </section>
          </Fragment>
        )}
      </div>
    );
  }
}

export default AvatarUpload;
