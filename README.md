# ifcopenshell-docker

This docker image compiles IfcOpenTools for you and allows to use it without need of installing various libraries on your linux box.

IfcOpenShell binaries are installed in /usr/local/bin/IfcConvert

usage example:

docker run --rm -v /path/to/your/dir:/ifcdata   yilativs/ifcopenshell:0.5-dev /usr/local/bin/IfcConvert /ifcdata/your.ifc /ifcdata/your.obj


for details of binary utilities names and their command line arguments see http://ifcopenshell.org

