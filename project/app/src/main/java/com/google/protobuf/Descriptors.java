package com.google.protobuf;

import com.google.protobuf.DescriptorProtos;
import com.google.protobuf.FieldSet;
import com.google.protobuf.Internal;
import com.google.protobuf.Message;
import com.google.protobuf.MessageLite;
import com.google.protobuf.TextFormat;
import com.google.protobuf.WireFormat;
import com.lidroid.xutils.util.CharsetUtils;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.commons.io.FilenameUtils;

/* loaded from: classes.dex */
public final class Descriptors {

    /* loaded from: classes.dex */
    public static final class Descriptor implements GenericDescriptor {
        private final Descriptor containingType;
        private final EnumDescriptor[] enumTypes;
        private final FieldDescriptor[] extensions;
        private final FieldDescriptor[] fields;
        private final FileDescriptor file;
        private final String fullName;
        private final int index;
        private final Descriptor[] nestedTypes;
        private DescriptorProtos.DescriptorProto proto;

        private Descriptor(DescriptorProtos.DescriptorProto descriptorProto, FileDescriptor fileDescriptor, Descriptor descriptor, int i) throws DescriptorValidationException {
            this.index = i;
            this.proto = descriptorProto;
            this.fullName = Descriptors.computeFullName(fileDescriptor, descriptor, descriptorProto.getName());
            this.file = fileDescriptor;
            this.containingType = descriptor;
            this.nestedTypes = new Descriptor[descriptorProto.getNestedTypeCount()];
            for (int i2 = 0; i2 < descriptorProto.getNestedTypeCount(); i2++) {
                this.nestedTypes[i2] = new Descriptor(descriptorProto.getNestedType(i2), fileDescriptor, this, i2);
            }
            this.enumTypes = new EnumDescriptor[descriptorProto.getEnumTypeCount()];
            for (int i3 = 0; i3 < descriptorProto.getEnumTypeCount(); i3++) {
                this.enumTypes[i3] = new EnumDescriptor(descriptorProto.getEnumType(i3), fileDescriptor, this, i3, null);
            }
            this.fields = new FieldDescriptor[descriptorProto.getFieldCount()];
            for (int i4 = 0; i4 < descriptorProto.getFieldCount(); i4++) {
                this.fields[i4] = new FieldDescriptor(descriptorProto.getField(i4), fileDescriptor, this, i4, false, null);
            }
            this.extensions = new FieldDescriptor[descriptorProto.getExtensionCount()];
            for (int i5 = 0; i5 < descriptorProto.getExtensionCount(); i5++) {
                this.extensions[i5] = new FieldDescriptor(descriptorProto.getExtension(i5), fileDescriptor, this, i5, true, null);
            }
            fileDescriptor.pool.addSymbol(this);
        }

        /* synthetic */ Descriptor(DescriptorProtos.DescriptorProto descriptorProto, FileDescriptor fileDescriptor, Descriptor descriptor, int i, Descriptor descriptor2) throws DescriptorValidationException {
            this(descriptorProto, fileDescriptor, descriptor, i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void crossLink() throws DescriptorValidationException {
            for (Descriptor descriptor : this.nestedTypes) {
                descriptor.crossLink();
            }
            for (FieldDescriptor fieldDescriptor : this.fields) {
                fieldDescriptor.crossLink();
            }
            for (FieldDescriptor fieldDescriptor2 : this.extensions) {
                fieldDescriptor2.crossLink();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setProto(DescriptorProtos.DescriptorProto descriptorProto) {
            this.proto = descriptorProto;
            for (int i = 0; i < this.nestedTypes.length; i++) {
                this.nestedTypes[i].setProto(descriptorProto.getNestedType(i));
            }
            for (int i2 = 0; i2 < this.enumTypes.length; i2++) {
                this.enumTypes[i2].setProto(descriptorProto.getEnumType(i2));
            }
            for (int i3 = 0; i3 < this.fields.length; i3++) {
                this.fields[i3].setProto(descriptorProto.getField(i3));
            }
            for (int i4 = 0; i4 < this.extensions.length; i4++) {
                this.extensions[i4].setProto(descriptorProto.getExtension(i4));
            }
        }

        public final EnumDescriptor findEnumTypeByName(String str) {
            GenericDescriptor findSymbol = this.file.pool.findSymbol(String.valueOf(this.fullName) + FilenameUtils.EXTENSION_SEPARATOR + str);
            if (findSymbol == null || !(findSymbol instanceof EnumDescriptor)) {
                return null;
            }
            return (EnumDescriptor) findSymbol;
        }

        public final FieldDescriptor findFieldByName(String str) {
            GenericDescriptor findSymbol = this.file.pool.findSymbol(String.valueOf(this.fullName) + FilenameUtils.EXTENSION_SEPARATOR + str);
            if (findSymbol == null || !(findSymbol instanceof FieldDescriptor)) {
                return null;
            }
            return (FieldDescriptor) findSymbol;
        }

        public final FieldDescriptor findFieldByNumber(int i) {
            return (FieldDescriptor) this.file.pool.fieldsByNumber.get(new DescriptorPool.DescriptorIntPair(this, i));
        }

        public final Descriptor findNestedTypeByName(String str) {
            GenericDescriptor findSymbol = this.file.pool.findSymbol(String.valueOf(this.fullName) + FilenameUtils.EXTENSION_SEPARATOR + str);
            if (findSymbol == null || !(findSymbol instanceof Descriptor)) {
                return null;
            }
            return (Descriptor) findSymbol;
        }

        public final Descriptor getContainingType() {
            return this.containingType;
        }

        public final List<EnumDescriptor> getEnumTypes() {
            return Collections.unmodifiableList(Arrays.asList(this.enumTypes));
        }

        public final List<FieldDescriptor> getExtensions() {
            return Collections.unmodifiableList(Arrays.asList(this.extensions));
        }

        public final List<FieldDescriptor> getFields() {
            return Collections.unmodifiableList(Arrays.asList(this.fields));
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public final FileDescriptor getFile() {
            return this.file;
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public final String getFullName() {
            return this.fullName;
        }

        public final int getIndex() {
            return this.index;
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public final String getName() {
            return this.proto.getName();
        }

        public final List<Descriptor> getNestedTypes() {
            return Collections.unmodifiableList(Arrays.asList(this.nestedTypes));
        }

        public final DescriptorProtos.MessageOptions getOptions() {
            return this.proto.getOptions();
        }

        public final boolean isExtensionNumber(int i) {
            for (DescriptorProtos.DescriptorProto.ExtensionRange extensionRange : this.proto.getExtensionRangeList()) {
                if (extensionRange.getStart() <= i && i < extensionRange.getEnd()) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public final DescriptorProtos.DescriptorProto toProto() {
            return this.proto;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class DescriptorPool {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private final Map<String, GenericDescriptor> descriptorsByName = new HashMap();
        private final Map<DescriptorIntPair, FieldDescriptor> fieldsByNumber = new HashMap();
        private final Map<DescriptorIntPair, EnumValueDescriptor> enumValuesByNumber = new HashMap();
        private final Set<FileDescriptor> dependencies = new HashSet();

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static final class DescriptorIntPair {
            private final GenericDescriptor descriptor;
            private final int number;

            DescriptorIntPair(GenericDescriptor genericDescriptor, int i) {
                this.descriptor = genericDescriptor;
                this.number = i;
            }

            public final boolean equals(Object obj) {
                if (!(obj instanceof DescriptorIntPair)) {
                    return false;
                }
                DescriptorIntPair descriptorIntPair = (DescriptorIntPair) obj;
                return this.descriptor == descriptorIntPair.descriptor && this.number == descriptorIntPair.number;
            }

            public final int hashCode() {
                return (this.descriptor.hashCode() * 65535) + this.number;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static final class PackageDescriptor implements GenericDescriptor {
            private final FileDescriptor file;
            private final String fullName;
            private final String name;

            PackageDescriptor(String str, String str2, FileDescriptor fileDescriptor) {
                this.file = fileDescriptor;
                this.fullName = str2;
                this.name = str;
            }

            @Override // com.google.protobuf.Descriptors.GenericDescriptor
            public final FileDescriptor getFile() {
                return this.file;
            }

            @Override // com.google.protobuf.Descriptors.GenericDescriptor
            public final String getFullName() {
                return this.fullName;
            }

            @Override // com.google.protobuf.Descriptors.GenericDescriptor
            public final String getName() {
                return this.name;
            }

            @Override // com.google.protobuf.Descriptors.GenericDescriptor
            public final Message toProto() {
                return this.file.toProto();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public enum SearchFilter {
            TYPES_ONLY,
            AGGREGATES_ONLY,
            ALL_SYMBOLS;

            /* renamed from: values, reason: to resolve conflict with enum method */
            public static SearchFilter[] valuesCustom() {
                SearchFilter[] valuesCustom = values();
                int length = valuesCustom.length;
                SearchFilter[] searchFilterArr = new SearchFilter[length];
                System.arraycopy(valuesCustom, 0, searchFilterArr, 0, length);
                return searchFilterArr;
            }
        }

        DescriptorPool(FileDescriptor[] fileDescriptorArr) {
            for (int i = 0; i < fileDescriptorArr.length; i++) {
                this.dependencies.add(fileDescriptorArr[i]);
                importPublicDependencies(fileDescriptorArr[i]);
            }
            for (FileDescriptor fileDescriptor : this.dependencies) {
                try {
                    addPackage(fileDescriptor.getPackage(), fileDescriptor);
                } catch (DescriptorValidationException unused) {
                }
            }
        }

        private void importPublicDependencies(FileDescriptor fileDescriptor) {
            for (FileDescriptor fileDescriptor2 : fileDescriptor.getPublicDependencies()) {
                if (this.dependencies.add(fileDescriptor2)) {
                    importPublicDependencies(fileDescriptor2);
                }
            }
        }

        static void validateSymbolName(GenericDescriptor genericDescriptor) throws DescriptorValidationException {
            String name = genericDescriptor.getName();
            DescriptorValidationException descriptorValidationException = null;
            if (name.length() == 0) {
                throw new DescriptorValidationException(genericDescriptor, "Missing name.", descriptorValidationException);
            }
            boolean z = true;
            for (int i = 0; i < name.length(); i++) {
                char charAt = name.charAt(i);
                if (charAt >= 128) {
                    z = false;
                }
                if (!Character.isLetter(charAt) && charAt != '_' && (!Character.isDigit(charAt) || i <= 0)) {
                    z = false;
                }
            }
            if (z) {
                return;
            }
            throw new DescriptorValidationException(genericDescriptor, "\"" + name + "\" is not a valid identifier.", descriptorValidationException);
        }

        final void addEnumValueByNumber(EnumValueDescriptor enumValueDescriptor) {
            DescriptorIntPair descriptorIntPair = new DescriptorIntPair(enumValueDescriptor.getType(), enumValueDescriptor.getNumber());
            EnumValueDescriptor put = this.enumValuesByNumber.put(descriptorIntPair, enumValueDescriptor);
            if (put != null) {
                this.enumValuesByNumber.put(descriptorIntPair, put);
            }
        }

        final void addFieldByNumber(FieldDescriptor fieldDescriptor) throws DescriptorValidationException {
            DescriptorIntPair descriptorIntPair = new DescriptorIntPair(fieldDescriptor.getContainingType(), fieldDescriptor.getNumber());
            FieldDescriptor put = this.fieldsByNumber.put(descriptorIntPair, fieldDescriptor);
            if (put != null) {
                this.fieldsByNumber.put(descriptorIntPair, put);
                throw new DescriptorValidationException((GenericDescriptor) fieldDescriptor, "Field number " + fieldDescriptor.getNumber() + "has already been used in \"" + fieldDescriptor.getContainingType().getFullName() + "\" by field \"" + put.getName() + "\".", (DescriptorValidationException) null);
            }
        }

        final void addPackage(String str, FileDescriptor fileDescriptor) throws DescriptorValidationException {
            String substring;
            int lastIndexOf = str.lastIndexOf(46);
            if (lastIndexOf == -1) {
                substring = str;
            } else {
                addPackage(str.substring(0, lastIndexOf), fileDescriptor);
                substring = str.substring(lastIndexOf + 1);
            }
            GenericDescriptor put = this.descriptorsByName.put(str, new PackageDescriptor(substring, str, fileDescriptor));
            if (put != null) {
                this.descriptorsByName.put(str, put);
                if (put instanceof PackageDescriptor) {
                    return;
                }
                throw new DescriptorValidationException(fileDescriptor, "\"" + substring + "\" is already defined (as something other than a package) in file \"" + put.getFile().getName() + "\".", (DescriptorValidationException) null);
            }
        }

        final void addSymbol(GenericDescriptor genericDescriptor) throws DescriptorValidationException {
            validateSymbolName(genericDescriptor);
            String fullName = genericDescriptor.getFullName();
            int lastIndexOf = fullName.lastIndexOf(46);
            GenericDescriptor put = this.descriptorsByName.put(fullName, genericDescriptor);
            if (put != null) {
                this.descriptorsByName.put(fullName, put);
                DescriptorValidationException descriptorValidationException = null;
                if (genericDescriptor.getFile() != put.getFile()) {
                    throw new DescriptorValidationException(genericDescriptor, "\"" + fullName + "\" is already defined in file \"" + put.getFile().getName() + "\".", descriptorValidationException);
                }
                if (lastIndexOf == -1) {
                    throw new DescriptorValidationException(genericDescriptor, "\"" + fullName + "\" is already defined.", descriptorValidationException);
                }
                throw new DescriptorValidationException(genericDescriptor, "\"" + fullName.substring(lastIndexOf + 1) + "\" is already defined in \"" + fullName.substring(0, lastIndexOf) + "\".", descriptorValidationException);
            }
        }

        final GenericDescriptor findSymbol(String str) {
            return findSymbol(str, SearchFilter.ALL_SYMBOLS);
        }

        final GenericDescriptor findSymbol(String str, SearchFilter searchFilter) {
            GenericDescriptor genericDescriptor = this.descriptorsByName.get(str);
            if (genericDescriptor != null && (searchFilter == SearchFilter.ALL_SYMBOLS || ((searchFilter == SearchFilter.TYPES_ONLY && isType(genericDescriptor)) || (searchFilter == SearchFilter.AGGREGATES_ONLY && isAggregate(genericDescriptor))))) {
                return genericDescriptor;
            }
            Iterator<FileDescriptor> it = this.dependencies.iterator();
            while (it.hasNext()) {
                GenericDescriptor genericDescriptor2 = it.next().pool.descriptorsByName.get(str);
                if (genericDescriptor2 != null && (searchFilter == SearchFilter.ALL_SYMBOLS || ((searchFilter == SearchFilter.TYPES_ONLY && isType(genericDescriptor2)) || (searchFilter == SearchFilter.AGGREGATES_ONLY && isAggregate(genericDescriptor2))))) {
                    return genericDescriptor2;
                }
            }
            return null;
        }

        final boolean isAggregate(GenericDescriptor genericDescriptor) {
            return (genericDescriptor instanceof Descriptor) || (genericDescriptor instanceof EnumDescriptor) || (genericDescriptor instanceof PackageDescriptor) || (genericDescriptor instanceof ServiceDescriptor);
        }

        final boolean isType(GenericDescriptor genericDescriptor) {
            return (genericDescriptor instanceof Descriptor) || (genericDescriptor instanceof EnumDescriptor);
        }

        /* JADX WARN: Removed duplicated region for block: B:6:0x005c  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0076 A[RETURN] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        final com.google.protobuf.Descriptors.GenericDescriptor lookupSymbol(java.lang.String r9, com.google.protobuf.Descriptors.GenericDescriptor r10, com.google.protobuf.Descriptors.DescriptorPool.SearchFilter r11) throws com.google.protobuf.Descriptors.DescriptorValidationException {
            /*
                r8 = this;
                java.lang.String r0 = "."
                boolean r0 = r9.startsWith(r0)
                if (r0 == 0) goto L12
                r0 = 1
                java.lang.String r0 = r9.substring(r0)
            Ld:
                com.google.protobuf.Descriptors$GenericDescriptor r11 = r8.findSymbol(r0, r11)
                goto L5a
            L12:
                r0 = 46
                int r0 = r9.indexOf(r0)
                r1 = -1
                if (r0 != r1) goto L1d
                r2 = r9
                goto L22
            L1d:
                r2 = 0
                java.lang.String r2 = r9.substring(r2, r0)
            L22:
                java.lang.StringBuilder r3 = new java.lang.StringBuilder
                java.lang.String r4 = r10.getFullName()
                r3.<init>(r4)
            L2b:
                java.lang.String r4 = "."
                int r4 = r3.lastIndexOf(r4)
                if (r4 != r1) goto L38
                com.google.protobuf.Descriptors$GenericDescriptor r11 = r8.findSymbol(r9, r11)
                goto L5a
            L38:
                int r5 = r4 + 1
                r3.setLength(r5)
                r3.append(r2)
                java.lang.String r6 = r3.toString()
                com.google.protobuf.Descriptors$DescriptorPool$SearchFilter r7 = com.google.protobuf.Descriptors.DescriptorPool.SearchFilter.AGGREGATES_ONLY
                com.google.protobuf.Descriptors$GenericDescriptor r6 = r8.findSymbol(r6, r7)
                if (r6 == 0) goto L77
                if (r0 == r1) goto L59
                r3.setLength(r5)
                r3.append(r9)
                java.lang.String r0 = r3.toString()
                goto Ld
            L59:
                r11 = r6
            L5a:
                if (r11 != 0) goto L76
                com.google.protobuf.Descriptors$DescriptorValidationException r11 = new com.google.protobuf.Descriptors$DescriptorValidationException
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                java.lang.String r1 = "\""
                r0.<init>(r1)
                r0.append(r9)
                java.lang.String r9 = "\" is not defined."
                r0.append(r9)
                java.lang.String r9 = r0.toString()
                r0 = 0
                r11.<init>(r10, r9, r0)
                throw r11
            L76:
                return r11
            L77:
                r3.setLength(r4)
                goto L2b
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Descriptors.DescriptorPool.lookupSymbol(java.lang.String, com.google.protobuf.Descriptors$GenericDescriptor, com.google.protobuf.Descriptors$DescriptorPool$SearchFilter):com.google.protobuf.Descriptors$GenericDescriptor");
        }
    }

    /* loaded from: classes.dex */
    public static class DescriptorValidationException extends Exception {
        private static final long serialVersionUID = 5750205775490483148L;
        private final String description;
        private final String name;
        private final Message proto;

        private DescriptorValidationException(FileDescriptor fileDescriptor, String str) {
            super(String.valueOf(fileDescriptor.getName()) + ": " + str);
            this.name = fileDescriptor.getName();
            this.proto = fileDescriptor.toProto();
            this.description = str;
        }

        /* synthetic */ DescriptorValidationException(FileDescriptor fileDescriptor, String str, DescriptorValidationException descriptorValidationException) {
            this(fileDescriptor, str);
        }

        private DescriptorValidationException(GenericDescriptor genericDescriptor, String str) {
            super(String.valueOf(genericDescriptor.getFullName()) + ": " + str);
            this.name = genericDescriptor.getFullName();
            this.proto = genericDescriptor.toProto();
            this.description = str;
        }

        /* synthetic */ DescriptorValidationException(GenericDescriptor genericDescriptor, String str, DescriptorValidationException descriptorValidationException) {
            this(genericDescriptor, str);
        }

        private DescriptorValidationException(GenericDescriptor genericDescriptor, String str, Throwable th) {
            this(genericDescriptor, str);
            initCause(th);
        }

        /* synthetic */ DescriptorValidationException(GenericDescriptor genericDescriptor, String str, Throwable th, DescriptorValidationException descriptorValidationException) {
            this(genericDescriptor, str, th);
        }

        public String getDescription() {
            return this.description;
        }

        public Message getProblemProto() {
            return this.proto;
        }

        public String getProblemSymbolName() {
            return this.name;
        }
    }

    /* loaded from: classes.dex */
    public static final class EnumDescriptor implements GenericDescriptor, Internal.EnumLiteMap<EnumValueDescriptor> {
        private final Descriptor containingType;
        private final FileDescriptor file;
        private final String fullName;
        private final int index;
        private DescriptorProtos.EnumDescriptorProto proto;
        private EnumValueDescriptor[] values;

        private EnumDescriptor(DescriptorProtos.EnumDescriptorProto enumDescriptorProto, FileDescriptor fileDescriptor, Descriptor descriptor, int i) throws DescriptorValidationException {
            this.index = i;
            this.proto = enumDescriptorProto;
            this.fullName = Descriptors.computeFullName(fileDescriptor, descriptor, enumDescriptorProto.getName());
            this.file = fileDescriptor;
            this.containingType = descriptor;
            if (enumDescriptorProto.getValueCount() == 0) {
                throw new DescriptorValidationException((GenericDescriptor) this, "Enums must contain at least one value.", (DescriptorValidationException) null);
            }
            this.values = new EnumValueDescriptor[enumDescriptorProto.getValueCount()];
            for (int i2 = 0; i2 < enumDescriptorProto.getValueCount(); i2++) {
                this.values[i2] = new EnumValueDescriptor(enumDescriptorProto.getValue(i2), fileDescriptor, this, i2, null);
            }
            fileDescriptor.pool.addSymbol(this);
        }

        /* synthetic */ EnumDescriptor(DescriptorProtos.EnumDescriptorProto enumDescriptorProto, FileDescriptor fileDescriptor, Descriptor descriptor, int i, EnumDescriptor enumDescriptor) throws DescriptorValidationException {
            this(enumDescriptorProto, fileDescriptor, descriptor, i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setProto(DescriptorProtos.EnumDescriptorProto enumDescriptorProto) {
            this.proto = enumDescriptorProto;
            for (int i = 0; i < this.values.length; i++) {
                this.values[i].setProto(enumDescriptorProto.getValue(i));
            }
        }

        public final EnumValueDescriptor findValueByName(String str) {
            GenericDescriptor findSymbol = this.file.pool.findSymbol(String.valueOf(this.fullName) + FilenameUtils.EXTENSION_SEPARATOR + str);
            if (findSymbol == null || !(findSymbol instanceof EnumValueDescriptor)) {
                return null;
            }
            return (EnumValueDescriptor) findSymbol;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.protobuf.Internal.EnumLiteMap
        public final EnumValueDescriptor findValueByNumber(int i) {
            return (EnumValueDescriptor) this.file.pool.enumValuesByNumber.get(new DescriptorPool.DescriptorIntPair(this, i));
        }

        public final Descriptor getContainingType() {
            return this.containingType;
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public final FileDescriptor getFile() {
            return this.file;
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public final String getFullName() {
            return this.fullName;
        }

        public final int getIndex() {
            return this.index;
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public final String getName() {
            return this.proto.getName();
        }

        public final DescriptorProtos.EnumOptions getOptions() {
            return this.proto.getOptions();
        }

        public final List<EnumValueDescriptor> getValues() {
            return Collections.unmodifiableList(Arrays.asList(this.values));
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public final DescriptorProtos.EnumDescriptorProto toProto() {
            return this.proto;
        }
    }

    /* loaded from: classes.dex */
    public static final class EnumValueDescriptor implements GenericDescriptor, Internal.EnumLite {
        private final FileDescriptor file;
        private final String fullName;
        private final int index;
        private DescriptorProtos.EnumValueDescriptorProto proto;
        private final EnumDescriptor type;

        private EnumValueDescriptor(DescriptorProtos.EnumValueDescriptorProto enumValueDescriptorProto, FileDescriptor fileDescriptor, EnumDescriptor enumDescriptor, int i) throws DescriptorValidationException {
            this.index = i;
            this.proto = enumValueDescriptorProto;
            this.file = fileDescriptor;
            this.type = enumDescriptor;
            this.fullName = String.valueOf(enumDescriptor.getFullName()) + FilenameUtils.EXTENSION_SEPARATOR + enumValueDescriptorProto.getName();
            fileDescriptor.pool.addSymbol(this);
            fileDescriptor.pool.addEnumValueByNumber(this);
        }

        /* synthetic */ EnumValueDescriptor(DescriptorProtos.EnumValueDescriptorProto enumValueDescriptorProto, FileDescriptor fileDescriptor, EnumDescriptor enumDescriptor, int i, EnumValueDescriptor enumValueDescriptor) throws DescriptorValidationException {
            this(enumValueDescriptorProto, fileDescriptor, enumDescriptor, i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setProto(DescriptorProtos.EnumValueDescriptorProto enumValueDescriptorProto) {
            this.proto = enumValueDescriptorProto;
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public final FileDescriptor getFile() {
            return this.file;
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public final String getFullName() {
            return this.fullName;
        }

        public final int getIndex() {
            return this.index;
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public final String getName() {
            return this.proto.getName();
        }

        @Override // com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.proto.getNumber();
        }

        public final DescriptorProtos.EnumValueOptions getOptions() {
            return this.proto.getOptions();
        }

        public final EnumDescriptor getType() {
            return this.type;
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public final DescriptorProtos.EnumValueDescriptorProto toProto() {
            return this.proto;
        }
    }

    /* loaded from: classes.dex */
    public static final class FieldDescriptor implements GenericDescriptor, FieldSet.FieldDescriptorLite<FieldDescriptor>, Comparable<FieldDescriptor> {

        /* renamed from: $SWITCH_TABLE$com$google$protobuf$Descriptors$FieldDescriptor$JavaType */
        private static /* synthetic */ int[] f7926xfcc84f65;

        /* renamed from: $SWITCH_TABLE$com$google$protobuf$Descriptors$FieldDescriptor$Type */
        private static /* synthetic */ int[] f7927x792aeea3;
        private static final WireFormat.FieldType[] table = WireFormat.FieldType.values();
        private Descriptor containingType;
        private Object defaultValue;
        private EnumDescriptor enumType;
        private final Descriptor extensionScope;
        private final FileDescriptor file;
        private final String fullName;
        private final int index;
        private Descriptor messageType;
        private DescriptorProtos.FieldDescriptorProto proto;
        private Type type;

        /* loaded from: classes.dex */
        public enum JavaType {
            INT(0),
            LONG(0L),
            FLOAT(Float.valueOf(0.0f)),
            DOUBLE(Double.valueOf(0.0d)),
            BOOLEAN(false),
            STRING(""),
            BYTE_STRING(ByteString.EMPTY),
            ENUM(null),
            MESSAGE(null);

            private final Object defaultDefault;

            JavaType(Object obj) {
                this.defaultDefault = obj;
            }

            /* renamed from: values, reason: to resolve conflict with enum method */
            public static JavaType[] valuesCustom() {
                JavaType[] valuesCustom = values();
                int length = valuesCustom.length;
                JavaType[] javaTypeArr = new JavaType[length];
                System.arraycopy(valuesCustom, 0, javaTypeArr, 0, length);
                return javaTypeArr;
            }
        }

        /* loaded from: classes.dex */
        public enum Type {
            DOUBLE(JavaType.DOUBLE),
            FLOAT(JavaType.FLOAT),
            INT64(JavaType.LONG),
            UINT64(JavaType.LONG),
            INT32(JavaType.INT),
            FIXED64(JavaType.LONG),
            FIXED32(JavaType.INT),
            BOOL(JavaType.BOOLEAN),
            STRING(JavaType.STRING),
            GROUP(JavaType.MESSAGE),
            MESSAGE(JavaType.MESSAGE),
            BYTES(JavaType.BYTE_STRING),
            UINT32(JavaType.INT),
            ENUM(JavaType.ENUM),
            SFIXED32(JavaType.INT),
            SFIXED64(JavaType.LONG),
            SINT32(JavaType.INT),
            SINT64(JavaType.LONG);

            private JavaType javaType;

            Type(JavaType javaType) {
                this.javaType = javaType;
            }

            public static Type valueOf(DescriptorProtos.FieldDescriptorProto.Type type) {
                return valuesCustom()[type.getNumber() - 1];
            }

            /* renamed from: values, reason: to resolve conflict with enum method */
            public static Type[] valuesCustom() {
                Type[] valuesCustom = values();
                int length = valuesCustom.length;
                Type[] typeArr = new Type[length];
                System.arraycopy(valuesCustom, 0, typeArr, 0, length);
                return typeArr;
            }

            public final JavaType getJavaType() {
                return this.javaType;
            }

            public final DescriptorProtos.FieldDescriptorProto.Type toProto() {
                return DescriptorProtos.FieldDescriptorProto.Type.valueOf(ordinal() + 1);
            }
        }

        /* renamed from: $SWITCH_TABLE$com$google$protobuf$Descriptors$FieldDescriptor$JavaType */
        static /* synthetic */ int[] m9298xfcc84f65() {
            int[] iArr = f7926xfcc84f65;
            if (iArr != null) {
                return iArr;
            }
            int[] iArr2 = new int[JavaType.valuesCustom().length];
            try {
                iArr2[JavaType.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr2[JavaType.BYTE_STRING.ordinal()] = 7;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr2[JavaType.DOUBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[JavaType.ENUM.ordinal()] = 8;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[JavaType.FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[JavaType.INT.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[JavaType.LONG.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[JavaType.MESSAGE.ordinal()] = 9;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[JavaType.STRING.ordinal()] = 6;
            } catch (NoSuchFieldError unused9) {
            }
            f7926xfcc84f65 = iArr2;
            return iArr2;
        }

        /* renamed from: $SWITCH_TABLE$com$google$protobuf$Descriptors$FieldDescriptor$Type */
        static /* synthetic */ int[] m9299x792aeea3() {
            int[] iArr = f7927x792aeea3;
            if (iArr != null) {
                return iArr;
            }
            int[] iArr2 = new int[Type.valuesCustom().length];
            try {
                iArr2[Type.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr2[Type.BYTES.ordinal()] = 12;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr2[Type.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[Type.ENUM.ordinal()] = 14;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[Type.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[Type.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[Type.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[Type.GROUP.ordinal()] = 10;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[Type.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr2[Type.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr2[Type.MESSAGE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr2[Type.SFIXED32.ordinal()] = 15;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr2[Type.SFIXED64.ordinal()] = 16;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr2[Type.SINT32.ordinal()] = 17;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr2[Type.SINT64.ordinal()] = 18;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr2[Type.STRING.ordinal()] = 9;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr2[Type.UINT32.ordinal()] = 13;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr2[Type.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused18) {
            }
            f7927x792aeea3 = iArr2;
            return iArr2;
        }

        static {
            if (Type.valuesCustom().length != DescriptorProtos.FieldDescriptorProto.Type.valuesCustom().length) {
                throw new RuntimeException("descriptor.proto has a new declared type but Desrciptors.java wasn't updated.");
            }
        }

        private FieldDescriptor(DescriptorProtos.FieldDescriptorProto fieldDescriptorProto, FileDescriptor fileDescriptor, Descriptor descriptor, int i, boolean z) throws DescriptorValidationException {
            this.index = i;
            this.proto = fieldDescriptorProto;
            this.fullName = Descriptors.computeFullName(fileDescriptor, descriptor, fieldDescriptorProto.getName());
            this.file = fileDescriptor;
            if (fieldDescriptorProto.hasType()) {
                this.type = Type.valueOf(fieldDescriptorProto.getType());
            }
            DescriptorValidationException descriptorValidationException = null;
            if (getNumber() <= 0) {
                throw new DescriptorValidationException((GenericDescriptor) this, "Field numbers must be positive integers.", descriptorValidationException);
            }
            if (fieldDescriptorProto.getOptions().getPacked() && !isPackable()) {
                throw new DescriptorValidationException((GenericDescriptor) this, "[packed = true] can only be specified for repeated primitive fields.", descriptorValidationException);
            }
            if (z) {
                if (!fieldDescriptorProto.hasExtendee()) {
                    throw new DescriptorValidationException((GenericDescriptor) this, "FieldDescriptorProto.extendee not set for extension field.", descriptorValidationException);
                }
                this.containingType = null;
                if (descriptor != null) {
                    this.extensionScope = descriptor;
                    fileDescriptor.pool.addSymbol(this);
                }
            } else {
                if (fieldDescriptorProto.hasExtendee()) {
                    throw new DescriptorValidationException((GenericDescriptor) this, "FieldDescriptorProto.extendee set for non-extension field.", descriptorValidationException);
                }
                this.containingType = descriptor;
            }
            this.extensionScope = null;
            fileDescriptor.pool.addSymbol(this);
        }

        /* synthetic */ FieldDescriptor(DescriptorProtos.FieldDescriptorProto fieldDescriptorProto, FileDescriptor fileDescriptor, Descriptor descriptor, int i, boolean z, FieldDescriptor fieldDescriptor) throws DescriptorValidationException {
            this(fieldDescriptorProto, fileDescriptor, descriptor, i, z);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Failed to find 'out' block for switch in B:44:0x017d. Please report as an issue. */
        public void crossLink() throws DescriptorValidationException {
            Object obj;
            Object valueOf;
            Type type;
            DescriptorValidationException descriptorValidationException = null;
            if (this.proto.hasExtendee()) {
                GenericDescriptor lookupSymbol = this.file.pool.lookupSymbol(this.proto.getExtendee(), this, DescriptorPool.SearchFilter.TYPES_ONLY);
                if (!(lookupSymbol instanceof Descriptor)) {
                    throw new DescriptorValidationException((GenericDescriptor) this, "\"" + this.proto.getExtendee() + "\" is not a message type.", descriptorValidationException);
                }
                this.containingType = (Descriptor) lookupSymbol;
                if (!getContainingType().isExtensionNumber(getNumber())) {
                    throw new DescriptorValidationException((GenericDescriptor) this, "\"" + getContainingType().getFullName() + "\" does not declare " + getNumber() + " as an extension number.", descriptorValidationException);
                }
            }
            if (this.proto.hasTypeName()) {
                GenericDescriptor lookupSymbol2 = this.file.pool.lookupSymbol(this.proto.getTypeName(), this, DescriptorPool.SearchFilter.TYPES_ONLY);
                if (!this.proto.hasType()) {
                    if (lookupSymbol2 instanceof Descriptor) {
                        type = Type.MESSAGE;
                    } else {
                        if (!(lookupSymbol2 instanceof EnumDescriptor)) {
                            throw new DescriptorValidationException((GenericDescriptor) this, "\"" + this.proto.getTypeName() + "\" is not a type.", descriptorValidationException);
                        }
                        type = Type.ENUM;
                    }
                    this.type = type;
                }
                if (getJavaType() == JavaType.MESSAGE) {
                    if (!(lookupSymbol2 instanceof Descriptor)) {
                        throw new DescriptorValidationException((GenericDescriptor) this, "\"" + this.proto.getTypeName() + "\" is not a message type.", descriptorValidationException);
                    }
                    this.messageType = (Descriptor) lookupSymbol2;
                    if (this.proto.hasDefaultValue()) {
                        throw new DescriptorValidationException((GenericDescriptor) this, "Messages can't have default values.", descriptorValidationException);
                    }
                } else {
                    if (getJavaType() != JavaType.ENUM) {
                        throw new DescriptorValidationException((GenericDescriptor) this, "Field with primitive type has type_name.", descriptorValidationException);
                    }
                    if (!(lookupSymbol2 instanceof EnumDescriptor)) {
                        throw new DescriptorValidationException((GenericDescriptor) this, "\"" + this.proto.getTypeName() + "\" is not an enum type.", descriptorValidationException);
                    }
                    this.enumType = (EnumDescriptor) lookupSymbol2;
                }
            } else if (getJavaType() == JavaType.MESSAGE || getJavaType() == JavaType.ENUM) {
                throw new DescriptorValidationException((GenericDescriptor) this, "Field with message or enum type missing type_name.", descriptorValidationException);
            }
            if (!this.proto.hasDefaultValue()) {
                if (!isRepeated()) {
                    switch (m9298xfcc84f65()[getJavaType().ordinal()]) {
                        case 8:
                            obj = this.enumType.getValues().get(0);
                            break;
                        case 9:
                            this.defaultValue = null;
                            break;
                        default:
                            obj = getJavaType().defaultDefault;
                            break;
                    }
                } else {
                    obj = Collections.emptyList();
                }
                this.defaultValue = obj;
            } else {
                if (isRepeated()) {
                    throw new DescriptorValidationException((GenericDescriptor) this, "Repeated fields cannot have default values.", descriptorValidationException);
                }
                try {
                    switch (m9299x792aeea3()[getType().ordinal()]) {
                        case 1:
                            valueOf = this.proto.getDefaultValue().equals("inf") ? Double.valueOf(Double.POSITIVE_INFINITY) : this.proto.getDefaultValue().equals("-inf") ? Double.valueOf(Double.NEGATIVE_INFINITY) : this.proto.getDefaultValue().equals("nan") ? Double.valueOf(Double.NaN) : Double.valueOf(this.proto.getDefaultValue());
                            this.defaultValue = valueOf;
                            break;
                        case 2:
                            valueOf = this.proto.getDefaultValue().equals("inf") ? Float.valueOf(Float.POSITIVE_INFINITY) : this.proto.getDefaultValue().equals("-inf") ? Float.valueOf(Float.NEGATIVE_INFINITY) : this.proto.getDefaultValue().equals("nan") ? Float.valueOf(Float.NaN) : Float.valueOf(this.proto.getDefaultValue());
                            this.defaultValue = valueOf;
                            break;
                        case 3:
                        case 16:
                        case 18:
                            valueOf = Long.valueOf(TextFormat.parseInt64(this.proto.getDefaultValue()));
                            this.defaultValue = valueOf;
                            break;
                        case 4:
                        case 6:
                            valueOf = Long.valueOf(TextFormat.parseUInt64(this.proto.getDefaultValue()));
                            this.defaultValue = valueOf;
                            break;
                        case 5:
                        case 15:
                        case 17:
                            valueOf = Integer.valueOf(TextFormat.parseInt32(this.proto.getDefaultValue()));
                            this.defaultValue = valueOf;
                            break;
                        case 7:
                        case 13:
                            valueOf = Integer.valueOf(TextFormat.parseUInt32(this.proto.getDefaultValue()));
                            this.defaultValue = valueOf;
                            break;
                        case 8:
                            valueOf = Boolean.valueOf(this.proto.getDefaultValue());
                            this.defaultValue = valueOf;
                            break;
                        case 9:
                            valueOf = this.proto.getDefaultValue();
                            this.defaultValue = valueOf;
                            break;
                        case 10:
                        case 11:
                            throw new DescriptorValidationException((GenericDescriptor) this, "Message type had default value.", descriptorValidationException);
                        case 12:
                            try {
                                this.defaultValue = TextFormat.unescapeBytes(this.proto.getDefaultValue());
                                break;
                            } catch (TextFormat.InvalidEscapeSequenceException e) {
                                throw new DescriptorValidationException(this, "Couldn't parse default value: " + e.getMessage(), e, descriptorValidationException);
                            }
                        case 14:
                            this.defaultValue = this.enumType.findValueByName(this.proto.getDefaultValue());
                            if (this.defaultValue == null) {
                                throw new DescriptorValidationException((GenericDescriptor) this, "Unknown enum default value: \"" + this.proto.getDefaultValue() + '\"', descriptorValidationException);
                            }
                            break;
                    }
                } catch (NumberFormatException e2) {
                    throw new DescriptorValidationException(this, "Could not parse default value: \"" + this.proto.getDefaultValue() + '\"', e2, descriptorValidationException);
                }
            }
            if (!isExtension()) {
                this.file.pool.addFieldByNumber(this);
            }
            if (this.containingType == null || !this.containingType.getOptions().getMessageSetWireFormat()) {
                return;
            }
            if (!isExtension()) {
                throw new DescriptorValidationException((GenericDescriptor) this, "MessageSets cannot have fields, only extensions.", descriptorValidationException);
            }
            if (!isOptional() || getType() != Type.MESSAGE) {
                throw new DescriptorValidationException((GenericDescriptor) this, "Extensions of MessageSets must be optional messages.", descriptorValidationException);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setProto(DescriptorProtos.FieldDescriptorProto fieldDescriptorProto) {
            this.proto = fieldDescriptorProto;
        }

        @Override // java.lang.Comparable
        public final int compareTo(FieldDescriptor fieldDescriptor) {
            if (fieldDescriptor.containingType != this.containingType) {
                throw new IllegalArgumentException("FieldDescriptors can only be compared to other FieldDescriptors for fields of the same message type.");
            }
            return getNumber() - fieldDescriptor.getNumber();
        }

        public final Descriptor getContainingType() {
            return this.containingType;
        }

        public final Object getDefaultValue() {
            if (getJavaType() == JavaType.MESSAGE) {
                throw new UnsupportedOperationException("FieldDescriptor.getDefaultValue() called on an embedded message field.");
            }
            return this.defaultValue;
        }

        @Override // com.google.protobuf.FieldSet.FieldDescriptorLite
        public final EnumDescriptor getEnumType() {
            if (getJavaType() != JavaType.ENUM) {
                throw new UnsupportedOperationException("This field is not of enum type.");
            }
            return this.enumType;
        }

        public final Descriptor getExtensionScope() {
            if (isExtension()) {
                return this.extensionScope;
            }
            throw new UnsupportedOperationException("This field is not an extension.");
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public final FileDescriptor getFile() {
            return this.file;
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public final String getFullName() {
            return this.fullName;
        }

        public final int getIndex() {
            return this.index;
        }

        public final JavaType getJavaType() {
            return this.type.getJavaType();
        }

        @Override // com.google.protobuf.FieldSet.FieldDescriptorLite
        public final WireFormat.JavaType getLiteJavaType() {
            return getLiteType().getJavaType();
        }

        @Override // com.google.protobuf.FieldSet.FieldDescriptorLite
        public final WireFormat.FieldType getLiteType() {
            return table[this.type.ordinal()];
        }

        public final Descriptor getMessageType() {
            if (getJavaType() != JavaType.MESSAGE) {
                throw new UnsupportedOperationException("This field is not of message type.");
            }
            return this.messageType;
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public final String getName() {
            return this.proto.getName();
        }

        @Override // com.google.protobuf.FieldSet.FieldDescriptorLite
        public final int getNumber() {
            return this.proto.getNumber();
        }

        public final DescriptorProtos.FieldOptions getOptions() {
            return this.proto.getOptions();
        }

        public final Type getType() {
            return this.type;
        }

        public final boolean hasDefaultValue() {
            return this.proto.hasDefaultValue();
        }

        @Override // com.google.protobuf.FieldSet.FieldDescriptorLite
        public final MessageLite.Builder internalMergeFrom(MessageLite.Builder builder, MessageLite messageLite) {
            return ((Message.Builder) builder).mergeFrom((Message) messageLite);
        }

        public final boolean isExtension() {
            return this.proto.hasExtendee();
        }

        public final boolean isOptional() {
            return this.proto.getLabel() == DescriptorProtos.FieldDescriptorProto.Label.LABEL_OPTIONAL;
        }

        public final boolean isPackable() {
            return isRepeated() && getLiteType().isPackable();
        }

        @Override // com.google.protobuf.FieldSet.FieldDescriptorLite
        public final boolean isPacked() {
            return getOptions().getPacked();
        }

        @Override // com.google.protobuf.FieldSet.FieldDescriptorLite
        public final boolean isRepeated() {
            return this.proto.getLabel() == DescriptorProtos.FieldDescriptorProto.Label.LABEL_REPEATED;
        }

        public final boolean isRequired() {
            return this.proto.getLabel() == DescriptorProtos.FieldDescriptorProto.Label.LABEL_REQUIRED;
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public final DescriptorProtos.FieldDescriptorProto toProto() {
            return this.proto;
        }
    }

    /* loaded from: classes.dex */
    public static final class FileDescriptor {
        private final FileDescriptor[] dependencies;
        private final EnumDescriptor[] enumTypes;
        private final FieldDescriptor[] extensions;
        private final Descriptor[] messageTypes;
        private final DescriptorPool pool;
        private DescriptorProtos.FileDescriptorProto proto;
        private final FileDescriptor[] publicDependencies;
        private final ServiceDescriptor[] services;

        /* loaded from: classes.dex */
        public interface InternalDescriptorAssigner {
            ExtensionRegistry assignDescriptors(FileDescriptor fileDescriptor);
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x00d7, code lost:
        
            throw new com.google.protobuf.Descriptors.DescriptorValidationException(r9, "Invalid public dependency index.", r2);
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private FileDescriptor(com.google.protobuf.DescriptorProtos.FileDescriptorProto r10, com.google.protobuf.Descriptors.FileDescriptor[] r11, com.google.protobuf.Descriptors.DescriptorPool r12) throws com.google.protobuf.Descriptors.DescriptorValidationException {
            /*
                Method dump skipped, instructions count: 216
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Descriptors.FileDescriptor.<init>(com.google.protobuf.DescriptorProtos$FileDescriptorProto, com.google.protobuf.Descriptors$FileDescriptor[], com.google.protobuf.Descriptors$DescriptorPool):void");
        }

        public static FileDescriptor buildFrom(DescriptorProtos.FileDescriptorProto fileDescriptorProto, FileDescriptor[] fileDescriptorArr) throws DescriptorValidationException {
            FileDescriptor fileDescriptor = new FileDescriptor(fileDescriptorProto, fileDescriptorArr, new DescriptorPool(fileDescriptorArr));
            DescriptorValidationException descriptorValidationException = null;
            if (fileDescriptorArr.length != fileDescriptorProto.getDependencyCount()) {
                throw new DescriptorValidationException(fileDescriptor, "Dependencies passed to FileDescriptor.buildFrom() don't match those listed in the FileDescriptorProto.", descriptorValidationException);
            }
            for (int i = 0; i < fileDescriptorProto.getDependencyCount(); i++) {
                if (!fileDescriptorArr[i].getName().equals(fileDescriptorProto.getDependency(i))) {
                    throw new DescriptorValidationException(fileDescriptor, "Dependencies passed to FileDescriptor.buildFrom() don't match those listed in the FileDescriptorProto.", descriptorValidationException);
                }
            }
            fileDescriptor.crossLink();
            return fileDescriptor;
        }

        private void crossLink() throws DescriptorValidationException {
            for (Descriptor descriptor : this.messageTypes) {
                descriptor.crossLink();
            }
            for (ServiceDescriptor serviceDescriptor : this.services) {
                serviceDescriptor.crossLink();
            }
            for (FieldDescriptor fieldDescriptor : this.extensions) {
                fieldDescriptor.crossLink();
            }
        }

        public static void internalBuildGeneratedFileFrom(String[] strArr, FileDescriptor[] fileDescriptorArr, InternalDescriptorAssigner internalDescriptorAssigner) {
            StringBuilder sb = new StringBuilder();
            for (String str : strArr) {
                sb.append(str);
            }
            try {
                byte[] bytes = sb.toString().getBytes(CharsetUtils.DEFAULT_ENCODING_CHARSET);
                try {
                    DescriptorProtos.FileDescriptorProto parseFrom = DescriptorProtos.FileDescriptorProto.parseFrom(bytes);
                    try {
                        FileDescriptor buildFrom = buildFrom(parseFrom, fileDescriptorArr);
                        ExtensionRegistry assignDescriptors = internalDescriptorAssigner.assignDescriptors(buildFrom);
                        if (assignDescriptors != null) {
                            try {
                                buildFrom.setProto(DescriptorProtos.FileDescriptorProto.parseFrom(bytes, assignDescriptors));
                            } catch (InvalidProtocolBufferException e) {
                                throw new IllegalArgumentException("Failed to parse protocol buffer descriptor for generated code.", e);
                            }
                        }
                    } catch (DescriptorValidationException e2) {
                        throw new IllegalArgumentException("Invalid embedded descriptor for \"" + parseFrom.getName() + "\".", e2);
                    }
                } catch (InvalidProtocolBufferException e3) {
                    throw new IllegalArgumentException("Failed to parse protocol buffer descriptor for generated code.", e3);
                }
            } catch (UnsupportedEncodingException e4) {
                throw new RuntimeException("Standard encoding ISO-8859-1 not supported by JVM.", e4);
            }
        }

        private void setProto(DescriptorProtos.FileDescriptorProto fileDescriptorProto) {
            this.proto = fileDescriptorProto;
            for (int i = 0; i < this.messageTypes.length; i++) {
                this.messageTypes[i].setProto(fileDescriptorProto.getMessageType(i));
            }
            for (int i2 = 0; i2 < this.enumTypes.length; i2++) {
                this.enumTypes[i2].setProto(fileDescriptorProto.getEnumType(i2));
            }
            for (int i3 = 0; i3 < this.services.length; i3++) {
                this.services[i3].setProto(fileDescriptorProto.getService(i3));
            }
            for (int i4 = 0; i4 < this.extensions.length; i4++) {
                this.extensions[i4].setProto(fileDescriptorProto.getExtension(i4));
            }
        }

        public final EnumDescriptor findEnumTypeByName(String str) {
            if (str.indexOf(46) != -1) {
                return null;
            }
            if (getPackage().length() > 0) {
                str = String.valueOf(getPackage()) + FilenameUtils.EXTENSION_SEPARATOR + str;
            }
            GenericDescriptor findSymbol = this.pool.findSymbol(str);
            if (findSymbol != null && (findSymbol instanceof EnumDescriptor) && findSymbol.getFile() == this) {
                return (EnumDescriptor) findSymbol;
            }
            return null;
        }

        public final FieldDescriptor findExtensionByName(String str) {
            if (str.indexOf(46) != -1) {
                return null;
            }
            if (getPackage().length() > 0) {
                str = String.valueOf(getPackage()) + FilenameUtils.EXTENSION_SEPARATOR + str;
            }
            GenericDescriptor findSymbol = this.pool.findSymbol(str);
            if (findSymbol != null && (findSymbol instanceof FieldDescriptor) && findSymbol.getFile() == this) {
                return (FieldDescriptor) findSymbol;
            }
            return null;
        }

        public final Descriptor findMessageTypeByName(String str) {
            if (str.indexOf(46) != -1) {
                return null;
            }
            if (getPackage().length() > 0) {
                str = String.valueOf(getPackage()) + FilenameUtils.EXTENSION_SEPARATOR + str;
            }
            GenericDescriptor findSymbol = this.pool.findSymbol(str);
            if (findSymbol != null && (findSymbol instanceof Descriptor) && findSymbol.getFile() == this) {
                return (Descriptor) findSymbol;
            }
            return null;
        }

        public final ServiceDescriptor findServiceByName(String str) {
            if (str.indexOf(46) != -1) {
                return null;
            }
            if (getPackage().length() > 0) {
                str = String.valueOf(getPackage()) + FilenameUtils.EXTENSION_SEPARATOR + str;
            }
            GenericDescriptor findSymbol = this.pool.findSymbol(str);
            if (findSymbol != null && (findSymbol instanceof ServiceDescriptor) && findSymbol.getFile() == this) {
                return (ServiceDescriptor) findSymbol;
            }
            return null;
        }

        public final List<FileDescriptor> getDependencies() {
            return Collections.unmodifiableList(Arrays.asList(this.dependencies));
        }

        public final List<EnumDescriptor> getEnumTypes() {
            return Collections.unmodifiableList(Arrays.asList(this.enumTypes));
        }

        public final List<FieldDescriptor> getExtensions() {
            return Collections.unmodifiableList(Arrays.asList(this.extensions));
        }

        public final List<Descriptor> getMessageTypes() {
            return Collections.unmodifiableList(Arrays.asList(this.messageTypes));
        }

        public final String getName() {
            return this.proto.getName();
        }

        public final DescriptorProtos.FileOptions getOptions() {
            return this.proto.getOptions();
        }

        public final String getPackage() {
            return this.proto.getPackage();
        }

        public final List<FileDescriptor> getPublicDependencies() {
            return Collections.unmodifiableList(Arrays.asList(this.publicDependencies));
        }

        public final List<ServiceDescriptor> getServices() {
            return Collections.unmodifiableList(Arrays.asList(this.services));
        }

        public final DescriptorProtos.FileDescriptorProto toProto() {
            return this.proto;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface GenericDescriptor {
        FileDescriptor getFile();

        String getFullName();

        String getName();

        Message toProto();
    }

    /* loaded from: classes.dex */
    public static final class MethodDescriptor implements GenericDescriptor {
        private final FileDescriptor file;
        private final String fullName;
        private final int index;
        private Descriptor inputType;
        private Descriptor outputType;
        private DescriptorProtos.MethodDescriptorProto proto;
        private final ServiceDescriptor service;

        private MethodDescriptor(DescriptorProtos.MethodDescriptorProto methodDescriptorProto, FileDescriptor fileDescriptor, ServiceDescriptor serviceDescriptor, int i) throws DescriptorValidationException {
            this.index = i;
            this.proto = methodDescriptorProto;
            this.file = fileDescriptor;
            this.service = serviceDescriptor;
            this.fullName = String.valueOf(serviceDescriptor.getFullName()) + FilenameUtils.EXTENSION_SEPARATOR + methodDescriptorProto.getName();
            fileDescriptor.pool.addSymbol(this);
        }

        /* synthetic */ MethodDescriptor(DescriptorProtos.MethodDescriptorProto methodDescriptorProto, FileDescriptor fileDescriptor, ServiceDescriptor serviceDescriptor, int i, MethodDescriptor methodDescriptor) throws DescriptorValidationException {
            this(methodDescriptorProto, fileDescriptor, serviceDescriptor, i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void crossLink() throws DescriptorValidationException {
            GenericDescriptor lookupSymbol = this.file.pool.lookupSymbol(this.proto.getInputType(), this, DescriptorPool.SearchFilter.TYPES_ONLY);
            DescriptorValidationException descriptorValidationException = null;
            if (!(lookupSymbol instanceof Descriptor)) {
                throw new DescriptorValidationException((GenericDescriptor) this, "\"" + this.proto.getInputType() + "\" is not a message type.", descriptorValidationException);
            }
            this.inputType = (Descriptor) lookupSymbol;
            GenericDescriptor lookupSymbol2 = this.file.pool.lookupSymbol(this.proto.getOutputType(), this, DescriptorPool.SearchFilter.TYPES_ONLY);
            if (lookupSymbol2 instanceof Descriptor) {
                this.outputType = (Descriptor) lookupSymbol2;
                return;
            }
            throw new DescriptorValidationException((GenericDescriptor) this, "\"" + this.proto.getOutputType() + "\" is not a message type.", descriptorValidationException);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setProto(DescriptorProtos.MethodDescriptorProto methodDescriptorProto) {
            this.proto = methodDescriptorProto;
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public final FileDescriptor getFile() {
            return this.file;
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public final String getFullName() {
            return this.fullName;
        }

        public final int getIndex() {
            return this.index;
        }

        public final Descriptor getInputType() {
            return this.inputType;
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public final String getName() {
            return this.proto.getName();
        }

        public final DescriptorProtos.MethodOptions getOptions() {
            return this.proto.getOptions();
        }

        public final Descriptor getOutputType() {
            return this.outputType;
        }

        public final ServiceDescriptor getService() {
            return this.service;
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public final DescriptorProtos.MethodDescriptorProto toProto() {
            return this.proto;
        }
    }

    /* loaded from: classes.dex */
    public static final class ServiceDescriptor implements GenericDescriptor {
        private final FileDescriptor file;
        private final String fullName;
        private final int index;
        private MethodDescriptor[] methods;
        private DescriptorProtos.ServiceDescriptorProto proto;

        private ServiceDescriptor(DescriptorProtos.ServiceDescriptorProto serviceDescriptorProto, FileDescriptor fileDescriptor, int i) throws DescriptorValidationException {
            this.index = i;
            this.proto = serviceDescriptorProto;
            this.fullName = Descriptors.computeFullName(fileDescriptor, null, serviceDescriptorProto.getName());
            this.file = fileDescriptor;
            this.methods = new MethodDescriptor[serviceDescriptorProto.getMethodCount()];
            for (int i2 = 0; i2 < serviceDescriptorProto.getMethodCount(); i2++) {
                this.methods[i2] = new MethodDescriptor(serviceDescriptorProto.getMethod(i2), fileDescriptor, this, i2, null);
            }
            fileDescriptor.pool.addSymbol(this);
        }

        /* synthetic */ ServiceDescriptor(DescriptorProtos.ServiceDescriptorProto serviceDescriptorProto, FileDescriptor fileDescriptor, int i, ServiceDescriptor serviceDescriptor) throws DescriptorValidationException {
            this(serviceDescriptorProto, fileDescriptor, i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void crossLink() throws DescriptorValidationException {
            for (MethodDescriptor methodDescriptor : this.methods) {
                methodDescriptor.crossLink();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setProto(DescriptorProtos.ServiceDescriptorProto serviceDescriptorProto) {
            this.proto = serviceDescriptorProto;
            for (int i = 0; i < this.methods.length; i++) {
                this.methods[i].setProto(serviceDescriptorProto.getMethod(i));
            }
        }

        public final MethodDescriptor findMethodByName(String str) {
            GenericDescriptor findSymbol = this.file.pool.findSymbol(String.valueOf(this.fullName) + FilenameUtils.EXTENSION_SEPARATOR + str);
            if (findSymbol == null || !(findSymbol instanceof MethodDescriptor)) {
                return null;
            }
            return (MethodDescriptor) findSymbol;
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public final FileDescriptor getFile() {
            return this.file;
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public final String getFullName() {
            return this.fullName;
        }

        public final int getIndex() {
            return this.index;
        }

        public final List<MethodDescriptor> getMethods() {
            return Collections.unmodifiableList(Arrays.asList(this.methods));
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public final String getName() {
            return this.proto.getName();
        }

        public final DescriptorProtos.ServiceOptions getOptions() {
            return this.proto.getOptions();
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public final DescriptorProtos.ServiceDescriptorProto toProto() {
            return this.proto;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String computeFullName(FileDescriptor fileDescriptor, Descriptor descriptor, String str) {
        if (descriptor != null) {
            return String.valueOf(descriptor.getFullName()) + FilenameUtils.EXTENSION_SEPARATOR + str;
        }
        if (fileDescriptor.getPackage().length() <= 0) {
            return str;
        }
        return String.valueOf(fileDescriptor.getPackage()) + FilenameUtils.EXTENSION_SEPARATOR + str;
    }
}
