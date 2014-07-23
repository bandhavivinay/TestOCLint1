source /.bash_profile


if [ -f xcodebuild.log ]; then
rm xcodebuild.log
fi

if [ -f compile_commands.json ]; then
rm compile_commands.json
fi

xcodebuild clean

#build xcodebuild.log
xcodebuild | tee xcodebuild.log

echo "[*] transforming xcodebuild.log into compile_commands.json..."
#transform it into compile_commands.json
oclint-xcodebuild
#run static analyzer

echo "[*] starting analyzing"

oclint-json-compilation-database -v oclint_args "-report-type pmd -o sonar-reports/oclint.xml -stats -max-priority-1=9999 -max-priority-2=9999 -max-priority-3=9999 -rc LONG_LINE=500 -rc LONG_VARIABLE_NAME=100"
