Name:		freedink-data
Version:	1.08.20080920
Release:	1%{?dist}
Summary:	Adventure and role-playing game (game data)

Group:		Amusements/Games
License:	zlib and CC-BY-SA and (GPLv3+ or Free Art or CC-BY-SA) and OAL and Public Domain and CC-BY and GPLv2+
URL:		http://www.freedink.org/
Source0:	ftp://ftp.gnu.org/gnu/freedink/%{name}-%{version}.tar.gz
#Source0:	http://www.freedink.org/releases/%{name}-%{version}.tar.gz
BuildRoot:	%{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)
BuildArch:	noarch

%description
Dink Smallwood is an adventure/role-playing game, similar to Zelda,
made by RTsoft. Besides twisted humour, it includes the actual game
editor, allowing players to create hundreds of new adventures called
Dink Modules or D-Mods for short.

This package contains architecture-independent data for the original
game, along with free sound and music replacements.


%prep
%setup -q
# Strip DOS EOL from documentation
# https://fedoraproject.org/wiki/PackageMaintainers/Common_Rpmlint_Issues#wrong-file-end-of-line-encoding
sed -i 's/\r//' README.txt README-REPLACEMENTS.txt


%build


%install
rm -rf $RPM_BUILD_ROOT
make install PREFIX=%{_prefix} DESTDIR=$RPM_BUILD_ROOT


%clean
rm -rf $RPM_BUILD_ROOT


%files
%defattr(-,root,root,-)
%doc README.txt README-REPLACEMENTS.txt licenses/
%{_datadir}/dink/


%changelog
* Sun Sep 20 2008 Sylvain Beucler <beuc@beuc.net> 1.08.20080920-1
- Initial package
