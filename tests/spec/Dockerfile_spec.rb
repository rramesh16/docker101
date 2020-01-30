# spec/Dockerfile_spec.rb

require "serverspec"
require "docker"

describe "Dockerfile" do
  before(:all) do
    image = Docker::Image.build_from_dir('.')

    set :os, family: :debian
    set :backend, :docker
    set :docker_image, image.id
  end

  it "installs the right version of Ubuntu" do
    expect(os_version).to include("Ubuntu 18.04")
  end

  it "installs nginx" do
      expect(package("nginx")).to be_installed
  end

  it "installs nginx" do
      expect(package("python")).to be_installed
  end
end
