package com.sun.mail.imap.protocol;

import com.cyjh.common.util.C1176s;
import com.sun.mail.iap.ProtocolException;
import com.sun.mail.iap.Response;
import com.sun.mail.util.ASCIIUtility;
import com.sun.mail.util.BASE64DecoderStream;
import com.sun.mail.util.BASE64EncoderStream;
import com.umeng.commonsdk.proguard.C2489bg;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.util.Properties;
import java.util.Vector;
import javax.security.auth.callback.Callback;
import javax.security.auth.callback.CallbackHandler;
import javax.security.auth.callback.NameCallback;
import javax.security.auth.callback.PasswordCallback;
import javax.security.sasl.RealmCallback;
import javax.security.sasl.RealmChoiceCallback;
import javax.security.sasl.Sasl;
import javax.security.sasl.SaslClient;
import javax.security.sasl.SaslException;

/* loaded from: classes.dex */
public class IMAPSaslAuthenticator implements SaslAuthenticator {
    private boolean debug;
    private String host;
    private String name;
    private PrintStream out;

    /* renamed from: pr */
    private IMAPProtocol f8851pr;
    private Properties props;

    public IMAPSaslAuthenticator(IMAPProtocol iMAPProtocol, String str, Properties properties, boolean z, PrintStream printStream, String str2) {
        this.f8851pr = iMAPProtocol;
        this.name = str;
        this.props = properties;
        this.debug = z;
        this.out = printStream;
        this.host = str2;
    }

    @Override // com.sun.mail.imap.protocol.SaslAuthenticator
    public boolean authenticate(String[] strArr, final String str, String str2, final String str3, final String str4) throws ProtocolException {
        String str5;
        boolean z;
        byte[] bArr;
        synchronized (this.f8851pr) {
            Vector vector = new Vector();
            boolean z2 = false;
            if (this.debug) {
                this.out.print("IMAP SASL DEBUG: Mechanisms:");
                for (String str6 : strArr) {
                    this.out.print(C1176s.a.f4108a + str6);
                }
                this.out.println();
            }
            try {
                SaslClient createSaslClient = Sasl.createSaslClient(strArr, str2, this.name, this.host, this.props, new CallbackHandler() { // from class: com.sun.mail.imap.protocol.IMAPSaslAuthenticator.1
                    @Override // javax.security.auth.callback.CallbackHandler
                    public void handle(Callback[] callbackArr) {
                        if (IMAPSaslAuthenticator.this.debug) {
                            IMAPSaslAuthenticator.this.out.println("IMAP SASL DEBUG: callback length: " + callbackArr.length);
                        }
                        for (int i = 0; i < callbackArr.length; i++) {
                            if (IMAPSaslAuthenticator.this.debug) {
                                IMAPSaslAuthenticator.this.out.println("IMAP SASL DEBUG: callback " + i + ": " + callbackArr[i]);
                            }
                            if (callbackArr[i] instanceof NameCallback) {
                                ((NameCallback) callbackArr[i]).setName(str3);
                            } else if (callbackArr[i] instanceof PasswordCallback) {
                                ((PasswordCallback) callbackArr[i]).setPassword(str4.toCharArray());
                            } else if (callbackArr[i] instanceof RealmCallback) {
                                RealmCallback realmCallback = (RealmCallback) callbackArr[i];
                                realmCallback.setText(str != null ? str : realmCallback.getDefaultText());
                            } else if (callbackArr[i] instanceof RealmChoiceCallback) {
                                RealmChoiceCallback realmChoiceCallback = (RealmChoiceCallback) callbackArr[i];
                                if (str == null) {
                                    realmChoiceCallback.setSelectedIndex(realmChoiceCallback.getDefaultChoice());
                                } else {
                                    String[] choices = realmChoiceCallback.getChoices();
                                    int i2 = 0;
                                    while (true) {
                                        if (i2 < choices.length) {
                                            if (choices[i2].equals(str)) {
                                                realmChoiceCallback.setSelectedIndex(i2);
                                                break;
                                            }
                                            i2++;
                                        }
                                    }
                                }
                            }
                        }
                    }
                });
                if (createSaslClient == null) {
                    if (this.debug) {
                        this.out.println("IMAP SASL DEBUG: No SASL support");
                    }
                    return false;
                }
                if (this.debug) {
                    this.out.println("IMAP SASL DEBUG: SASL client " + createSaslClient.getMechanismName());
                }
                try {
                    String writeCommand = this.f8851pr.writeCommand("AUTHENTICATE " + createSaslClient.getMechanismName(), null);
                    OutputStream iMAPOutputStream = this.f8851pr.getIMAPOutputStream();
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    byte[] bArr2 = {C2489bg.f9368k, 10};
                    boolean equals = createSaslClient.getMechanismName().equals("XGWTRUSTEDAPP");
                    boolean z3 = true;
                    Response response = null;
                    boolean z4 = false;
                    while (!z4) {
                        try {
                            response = this.f8851pr.readResponse();
                        } catch (Exception e) {
                            if (this.debug) {
                                e.printStackTrace();
                            }
                            response = Response.byeResponse(e);
                        }
                        if (response.isContinuation()) {
                            if (createSaslClient.isComplete()) {
                                z = z4;
                                bArr = null;
                            } else {
                                byte[] newBytes = response.readByteArray().getNewBytes();
                                if (newBytes.length > 0) {
                                    newBytes = BASE64DecoderStream.decode(newBytes);
                                }
                                if (this.debug) {
                                    PrintStream printStream = this.out;
                                    StringBuilder sb = new StringBuilder("IMAP SASL DEBUG: challenge: ");
                                    z = z4;
                                    sb.append(ASCIIUtility.toString(newBytes, 0, newBytes.length));
                                    sb.append(" :");
                                    printStream.println(sb.toString());
                                } else {
                                    z = z4;
                                }
                                bArr = createSaslClient.evaluateChallenge(newBytes);
                            }
                            if (bArr == null) {
                                if (this.debug) {
                                    this.out.println("IMAP SASL DEBUG: no response");
                                }
                                iMAPOutputStream.write(bArr2);
                                iMAPOutputStream.flush();
                            } else {
                                if (this.debug) {
                                    this.out.println("IMAP SASL DEBUG: response: " + ASCIIUtility.toString(bArr, 0, bArr.length) + " :");
                                }
                                byte[] encode = BASE64EncoderStream.encode(bArr);
                                if (equals) {
                                    byteArrayOutputStream.write("XGWTRUSTEDAPP ".getBytes());
                                }
                                byteArrayOutputStream.write(encode);
                                byteArrayOutputStream.write(bArr2);
                                iMAPOutputStream.write(byteArrayOutputStream.toByteArray());
                                iMAPOutputStream.flush();
                            }
                            byteArrayOutputStream.reset();
                        } else {
                            z = z4;
                            if ((!response.isTagged() || !response.getTag().equals(writeCommand)) && !response.isBYE()) {
                                vector.addElement(response);
                            }
                            z2 = false;
                            z3 = true;
                            z4 = true;
                        }
                        z4 = z;
                        z2 = false;
                        z3 = true;
                    }
                    if (createSaslClient.isComplete() && (str5 = (String) createSaslClient.getNegotiatedProperty("javax.security.sasl.qop")) != null && (str5.equalsIgnoreCase("auth-int") || str5.equalsIgnoreCase("auth-conf"))) {
                        if (this.debug) {
                            this.out.println("IMAP SASL DEBUG: Mechanism requires integrity or confidentiality");
                        }
                        return z2;
                    }
                    Response[] responseArr = new Response[vector.size()];
                    vector.copyInto(responseArr);
                    this.f8851pr.notifyResponseHandlers(responseArr);
                    this.f8851pr.handleResult(response);
                    this.f8851pr.setCapabilities(response);
                    return z3;
                } catch (Exception e2) {
                    if (this.debug) {
                        this.out.println("IMAP SASL DEBUG: AUTHENTICATE Exception: " + e2);
                    }
                    return false;
                }
            } catch (SaslException e3) {
                if (this.debug) {
                    this.out.println("IMAP SASL DEBUG: Failed to create SASL client: " + e3);
                }
                return false;
            }
        }
    }
}
